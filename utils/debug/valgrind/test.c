#if 0
int main()
{
    int len=4096;
    char *mem = malloc(len);
    return 0;
}
#endif

int main()
{
    int len=4096;
    while(1) {
    char *mem  = malloc(len);
    sleep(2);
    printf("loop\n");
    }
    return 0;
}
