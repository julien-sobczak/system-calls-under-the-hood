#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(void)
{
	pid_t pid;
	pid = getpid();
	printf("PID=%d", pid);
	return 0;
}
