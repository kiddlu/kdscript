#include <getopt.h>
#include <unistd.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

#include "png.h"

#define MAX_PATH 4096

//libpng
int write_png(const char* png_file_name, uint8_t* pixels , int width, int height, int bit_depth)
{
    png_structp png_ptr;
    png_infop info_ptr;

    FILE *png_file = fopen(png_file_name, "wb");  
    if (!png_file) {
        return -1;
    }

    png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    if(png_ptr == NULL) {
        printf("ERROR:png_create_write_struct/n"); 
        fclose(png_file);
        return -1;
    }

    info_ptr = png_create_info_struct(png_ptr);
    if(info_ptr == NULL) {
        printf("ERROR:png_create_info_struct/n");  
        png_destroy_write_struct(&png_ptr, NULL);  
        return -1;
    }

    png_init_io(png_ptr, png_file);
    png_set_IHDR(png_ptr, info_ptr, width, height, bit_depth, PNG_COLOR_TYPE_GRAY,
        PNG_INTERLACE_NONE, PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE); 
 
    png_write_info(png_ptr, info_ptr);  
    png_set_packing(png_ptr);

    png_bytepp rows = (png_bytepp)png_malloc(png_ptr, height * sizeof(png_bytep));

    for (int i = 0; i < height; ++i)
    {
        rows[i] = (png_bytep)(pixels + (i) * width);
    }

    png_write_image(png_ptr, rows);
    free(rows);

    png_write_end(png_ptr, info_ptr);  

    png_destroy_write_struct(&png_ptr, &info_ptr);  
    fclose(png_file);  
    return 0;  
}

struct global_opt {
    uint32_t width;
    uint32_t height;
    char *file_path;
} gopt = {
	0,
	0,
	NULL
};

int opt_parse(int argc, char **argv)
{
    while (1) {
            static struct option opts[] = {
                    {"width", 1, NULL, 'w'},
                    {"height", 1, NULL, 'h'},
                    {"path", 1, NULL, 'p'},
                    {NULL, 0, NULL, 0}
            };

            int index = 0, c;

            c = getopt_long(argc, argv, "w:h:p:", opts, &index);
            if (c == -1)
                    break;
            switch (c) {
            case 'w':
                    gopt.width = atoi(optarg);
                    break;
            case 'h':
                    gopt.height = atoi(optarg);
                    break;
            case 'p':
                    gopt.file_path = optarg;
                    break;
            default:
                    break;
            }
    }
    return 0;
}

int file_exist(char *filename)
{
    return (access(filename, 0) == 0);
}

int raw16_to_raw8(uint16_t *raw16_buf, uint8_t *raw8_buf, size_t pixels)
{
    uint16_t max = 0;
    for(int i; i<pixels; i++){
            if(raw16_buf[i] > max){
                    max = raw16_buf[i];
            }
    }

    for(int i; i<pixels; i++){
            raw8_buf[i] = raw16_buf[i] * ((uint8_t)-1) / max;
    }
}

int main(int argc, char **argv)
{
    char fn[MAX_PATH];
    opt_parse(argc, argv);

    uint32_t width = gopt.width;
    uint32_t height = gopt.height;
    uint32_t pixels = width * height;

    char *fp = gopt.file_path;

    if(fp == NULL || width == 0 || height == 0){
            printf("usage:\n");
            return 0;
    } else if(!file_exist(fp)) {
            printf("file not exist\n");
            return 0;
    }

    size_t raw16_size = sizeof(uint16_t) * pixels;
    uint16_t *raw16_buf = (uint16_t *)malloc(raw16_size);

    size_t raw8_size = sizeof(uint8_t) * pixels;
    uint8_t *raw8_buf = (uint8_t *)malloc(raw8_size);

    FILE *raw_file = fopen(fp, "rb");
    fread(raw16_buf, raw16_size, 1, raw_file); 
    fclose(raw_file);
 
    raw16_to_raw8(raw16_buf, raw8_buf, pixels);

    sprintf(fn, "%s.png", fp);
    write_png(fn, raw8_buf , width, height, 8);

    return 0;
}
