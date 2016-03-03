//
//  filter_fork_ios.c
//  libarchive
//

#include "archive_platform.h"


pid_t __archive_create_child(const char *cmd, int *child_stdin, int *child_stdout)
{
    return -1;
}

void __archive_check_child(int in, int out)
{
}
