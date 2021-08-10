#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <time.h>

pid_t getdummyid()
{
    return 1;
}

int main(void)
{
    pid_t pid;

    clock_t start_time;
    double elapsed_time;

    start_time = clock();
    for (int i = 0; i < 10000000; i++)
    {
        pid = getpid();
    }
    elapsed_time = (double)(clock() - start_time) / CLOCKS_PER_SEC;
    printf("Done getpid in %f seconds\n", elapsed_time);

    start_time = clock();
    for (int i = 0; i < 10000000; i++)
    {
        pid = getdummyid();
    }
    elapsed_time = (double)(clock() - start_time) / CLOCKS_PER_SEC;
    printf("Done getdummyid in %f seconds\n", elapsed_time);

    return 0;
}
