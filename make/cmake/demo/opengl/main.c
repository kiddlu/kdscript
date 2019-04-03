//mingw64: gcc main.c -o main -lfreeglut -lopengl32
//ubuntu:  gcc main.c -o main -lglut -lGL

#include <stdio.h>
#include <string.h>
#include <GL/freeglut.h>

#include "bmp.h"

void gl_init()
{
    glClearColor(0.0,0.0,0.0,0.0);
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0, 1.0, 1.0);
    glutSolidSphere(1.0, 50, 6);
    glFlush();
}


int gl_save_bmp(const char *fname)
{
    GLint view_port[4];
    glGetIntegerv(GL_VIEWPORT, view_port);

    int width = view_port[2];
    int height = view_port[3];

    unsigned char* buf = (unsigned char *)malloc(width * height * 4 * sizeof(unsigned char));
    memset(buf, 0, width * height * 4);

    glReadPixels(0, 0, width, height, GL_RGB, GL_UNSIGNED_BYTE, buf);

    BITMAPFILEHEADER bmp_header;  
    BITMAPINFOHEADER bmp_hinfo;  
    bmp_header.bfType = 0x4D42;  
    bmp_header.bfSize =(uint32_t)(sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER) + width* height * 4);  
    bmp_header.bfReserved1 = 0;  
    bmp_header.bfReserved2 = 0;  
    bmp_header.bfOffBits = (uint32_t)(sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER)) ;  
    bmp_hinfo.biSize = sizeof(BITMAPINFOHEADER);  
    bmp_hinfo.biWidth = width;  
    bmp_hinfo.biHeight = height;  
    bmp_hinfo.biPlanes = 1;  
    bmp_hinfo.biBitCount = 24;  
    bmp_hinfo.biCompression = 0;  
    bmp_hinfo.biSizeImage = 4 * width * height;  
    bmp_hinfo.biXPelsPerMeter = 0;  
    bmp_hinfo.biYPelsPerMeter = 0;  
    bmp_hinfo.biClrUsed = 0;  
    bmp_hinfo.biClrImportant = 0; 

    FILE *fp;
    if(!(fp = fopen(fname, "wb+"))) {
      printf("save %s falied\n", fname);
      return -1;
    }

    fwrite(&bmp_header, 1, sizeof(BITMAPFILEHEADER), fp);
    fwrite(&bmp_hinfo, 1, sizeof(BITMAPINFOHEADER), fp);
    fwrite(buf, 1, bmp_hinfo.biSizeImage, fp);
    fclose(fp);

    free(buf);
    return 0;
}

int main(int argc, char ** argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA);
    glutInitWindowSize(600, 600);
    glutInitWindowPosition(0, 0);
    glutCreateWindow("OpenGL Window");
    gl_init();
    gl_save_bmp("opengl.bmp");
    return 0;
}
