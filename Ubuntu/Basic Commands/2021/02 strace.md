# strace

---

## Intro
* strace - trace system calls & signals

---

## 01 | vmware
````sh
strace -f vmware

execve("/usr/bin/vmware", ["vmware"], 0x7ffee5fd0018 /* 16 vars */) = 0
brk(NULL)                               = 0x55f8fe2db000
arch_prctl(0x3001 /* ARCH_??? */, 0x7ffdcad8a630) = -1 EINVAL (Invalid argument)
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=70838, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 70838, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f01f0726000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\206\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0+H)\227\201T\214\233\304R\352\306\3379\220%"..., 68, 896) = 68
newfstatat(3, "", {st_mode=S_IFREG|0755, st_size=1983576, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f01f0724000
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
mmap(NULL, 2012056, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f01f0538000
mmap(0x7f01f055e000, 1486848, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x26000) = 0x7f01f055e000
mmap(0x7f01f06c9000, 311296, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x191000) = 0x7f01f06c9000
mmap(0x7f01f0715000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1dc000) = 0x7f01f0715000
mmap(0x7f01f071b000, 33688, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f01f071b000
close(3)                                = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f01f0536000
arch_prctl(ARCH_SET_FS, 0x7f01f07255c0) = 0
mprotect(0x7f01f0715000, 12288, PROT_READ) = 0
mprotect(0x55f8fd360000, 4096, PROT_READ) = 0
mprotect(0x7f01f076a000, 8192, PROT_READ) = 0
munmap(0x7f01f0726000, 70838)           = 0
brk(NULL)                               = 0x55f8fe2db000
brk(0x55f8fe2fc000)                     = 0x55f8fe2fc000
openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=14553360, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 14553360, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f01ef754000
close(3)                                = 0
execve("/usr/local/sbin/bash", ["bash", "/usr/bin/vmware"], 0x7ffdcad8a7a8 /* 16 vars */) = -1 ENOENT (No such file or directory)
execve("/usr/local/bin/bash", ["bash", "/usr/bin/vmware"], 0x7ffdcad8a7a8 /* 16 vars */) = -1 ENOENT (No such file or directory)
execve("/usr/sbin/bash", ["bash", "/usr/bin/vmware"], 0x7ffdcad8a7a8 /* 16 vars */) = -1 ENOENT (No such file or directory)
execve("/usr/bin/bash", ["bash", "/usr/bin/vmware"], 0x7ffdcad8a7a8 /* 16 vars */) = 0
brk(NULL)                               = 0x558f973a8000
arch_prctl(0x3001 /* ARCH_??? */, 0x7ffcf506fe30) = -1 EINVAL (Invalid argument)
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=70838, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 70838, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f54e2917000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libtinfo.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\0\347\0\0\0\0\0\0"..., 832) = 832
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=187952, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f54e2915000
mmap(NULL, 190880, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f54e28e6000
mmap(0x7f54e28f4000, 57344, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xe000) = 0x7f54e28f4000
mmap(0x7f54e2902000, 57344, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1c000) = 0x7f54e2902000
mmap(0x7f54e2910000, 20480, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x29000) = 0x7f54e2910000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libdl.so.2", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0 \"\0\0\0\0\0\0"..., 832) = 832
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=22912, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 24848, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f54e28df000
mmap(0x7f54e28e1000, 8192, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000) = 0x7f54e28e1000
mmap(0x7f54e28e3000, 4096, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000) = 0x7f54e28e3000
mmap(0x7f54e28e4000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000) = 0x7f54e28e4000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\206\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0+H)\227\201T\214\233\304R\352\306\3379\220%"..., 68, 896) = 68
newfstatat(3, "", {st_mode=S_IFREG|0755, st_size=1983576, ...}, AT_EMPTY_PATH) = 0
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
mmap(NULL, 2012056, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f54e26f3000
mmap(0x7f54e2719000, 1486848, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x26000) = 0x7f54e2719000
mmap(0x7f54e2884000, 311296, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x191000) = 0x7f54e2884000
mmap(0x7f54e28d0000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1dc000) = 0x7f54e28d0000
mmap(0x7f54e28d6000, 33688, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f54e28d6000
close(3)                                = 0
mmap(NULL, 12288, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f54e26f0000
arch_prctl(ARCH_SET_FS, 0x7f54e26f0740) = 0
mprotect(0x7f54e28d0000, 12288, PROT_READ) = 0
mprotect(0x7f54e28e4000, 4096, PROT_READ) = 0
mprotect(0x7f54e2910000, 16384, PROT_READ) = 0
mprotect(0x558f96cab000, 16384, PROT_READ) = 0
mprotect(0x7f54e295b000, 8192, PROT_READ) = 0
munmap(0x7f54e2917000, 70838)           = 0
openat(AT_FDCWD, "/dev/tty", O_RDWR|O_NONBLOCK) = 3
close(3)                                = 0
brk(NULL)                               = 0x558f973a8000
brk(0x558f973c9000)                     = 0x558f973c9000
openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=14553360, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 14553360, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f54e190e000
close(3)                                = 0
openat(AT_FDCWD, "/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache", O_RDONLY) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=27002, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 27002, PROT_READ, MAP_SHARED, 3, 0) = 0x7f54e2922000
close(3)                                = 0
getuid()                                = 0
getgid()                                = 0
geteuid()                               = 0
getegid()                               = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
ioctl(-1, TIOCGPGRP, 0x7ffcf506fce4)    = -1 EBADF (Bad file descriptor)
sysinfo({uptime=26833, loads=[51520, 58080, 62016], totalram=25126662144, freeram=14654676992, sharedram=381906944, bufferram=260341760, totalswap=2147479552, freeswap=2147479552, procs=1226, totalhigh=0, freehigh=0, mem_unit=1}) = 0
rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
rt_sigaction(SIGQUIT, {sa_handler=SIG_IGN, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
uname({sysname="Linux", nodename="DT1", ...}) = 0
getcwd("/home/ubuntu", 4096)            = 13
getpid()                                = 24604
getppid()                               = 24601
newfstatat(AT_FDCWD, ".", {st_mode=S_IFDIR|0750, st_size=4096, ...}, 0) = 0
newfstatat(AT_FDCWD, "/usr/local/sbin/bash", 0x7ffcf506f920, 0) = -1 ENOENT (No such file or directory)
newfstatat(AT_FDCWD, "/usr/local/bin/bash", 0x7ffcf506f920, 0) = -1 ENOENT (No such file or directory)
newfstatat(AT_FDCWD, "/usr/sbin/bash", 0x7ffcf506f920, 0) = -1 ENOENT (No such file or directory)
newfstatat(AT_FDCWD, "/usr/bin/bash", {st_mode=S_IFREG|0755, st_size=1404744, ...}, 0) = 0
newfstatat(AT_FDCWD, "/usr/bin/bash", {st_mode=S_IFREG|0755, st_size=1404744, ...}, 0) = 0
geteuid()                               = 0
getegid()                               = 0
getuid()                                = 0
getgid()                                = 0
access("/usr/bin/bash", X_OK)           = 0
newfstatat(AT_FDCWD, "/usr/bin/bash", {st_mode=S_IFREG|0755, st_size=1404744, ...}, 0) = 0
geteuid()                               = 0
getegid()                               = 0
getuid()                                = 0
getgid()                                = 0
access("/usr/bin/bash", R_OK)           = 0
newfstatat(AT_FDCWD, "/usr/bin/bash", {st_mode=S_IFREG|0755, st_size=1404744, ...}, 0) = 0
newfstatat(AT_FDCWD, "/usr/bin/bash", {st_mode=S_IFREG|0755, st_size=1404744, ...}, 0) = 0
geteuid()                               = 0
getegid()                               = 0
getuid()                                = 0
getgid()                                = 0
access("/usr/bin/bash", X_OK)           = 0
newfstatat(AT_FDCWD, "/usr/bin/bash", {st_mode=S_IFREG|0755, st_size=1404744, ...}, 0) = 0
geteuid()                               = 0
getegid()                               = 0
getuid()                                = 0
getgid()                                = 0
access("/usr/bin/bash", R_OK)           = 0
getpid()                                = 24604
getppid()                               = 24601
getpid()                                = 24604
getppid()                               = 24601
getpgrp()                               = 24600
ioctl(2, TIOCGPGRP, 0x7ffcf506fb84)     = -1 ENOTTY (Inappropriate ioctl for device)
rt_sigaction(SIGCHLD, {sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
ioctl(2, TIOCGPGRP, 0x7ffcf506fb54)     = -1 ENOTTY (Inappropriate ioctl for device)
prlimit64(0, RLIMIT_NPROC, NULL, {rlim_cur=95588, rlim_max=95588}) = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
openat(AT_FDCWD, "/usr/bin/vmware", O_RDONLY) = 3
newfstatat(AT_FDCWD, "/usr/bin/vmware", {st_mode=S_IFREG|0755, st_size=3331, ...}, 0) = 0
ioctl(3, TCGETS, 0x7ffcf506fc80)        = -1 ENOTTY (Inappropriate ioctl for device)
lseek(3, 0, SEEK_CUR)                   = 0
read(3, "#!/usr/bin/env bash\n#\n# Copyrigh"..., 80) = 80
lseek(3, 0, SEEK_SET)                   = 0
prlimit64(0, RLIMIT_NOFILE, NULL, {rlim_cur=1024, rlim_max=1024*1024}) = 0
fcntl(255, F_GETFD)                     = -1 EBADF (Bad file descriptor)
dup2(3, 255)                            = 255
close(3)                                = 0
fcntl(255, F_SETFD, FD_CLOEXEC)         = 0
fcntl(255, F_GETFL)                     = 0x8000 (flags O_RDONLY|O_LARGEFILE)
newfstatat(255, "", {st_mode=S_IFREG|0755, st_size=3331, ...}, AT_EMPTY_PATH) = 0
lseek(255, 0, SEEK_CUR)                 = 0
read(255, "#!/usr/bin/env bash\n#\n# Copyrigh"..., 3331) = 3331
openat(AT_FDCWD, "/etc/vmware/bootstrap", O_RDONLY) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=226, ...}, AT_EMPTY_PATH) = 0
read(3, "PREFIX=\"/usr\"\nBINDIR=\"/usr/bin\"\n"..., 226) = 226
close(3)                                = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
rt_sigprocmask(SIG_BLOCK, [CHLD], [], 8) = 0
pipe([3, 4])                            = 0
rt_sigprocmask(SIG_BLOCK, NULL, [CHLD], 8) = 0
rt_sigprocmask(SIG_BLOCK, [INT TERM CHLD], [CHLD], 8) = 0
lseek(255, -1936, SEEK_CUR)             = 1395
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLDstrace: Process 24605 attached
, child_tidptr=0x7f54e26f0a10) = 24605
[pid 24604] rt_sigprocmask(SIG_SETMASK, [CHLD], NULL, 8) = 0
[pid 24604] close(4)                    = 0
[pid 24605] getpid( <unfinished ...>
[pid 24604] close(4)                    = -1 EBADF (Bad file descriptor)
[pid 24604] rt_sigprocmask(SIG_BLOCK, NULL,  <unfinished ...>
[pid 24605] <... getpid resumed>)       = 24605
[pid 24604] <... rt_sigprocmask resumed>[CHLD], 8) = 0
[pid 24604] rt_sigprocmask(SIG_BLOCK, [INT TERM CHLD], [CHLD], 8) = 0
[pid 24604] clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD <unfinished ...>
[pid 24605] close(255)                  = 0
[pid 24605] rt_sigprocmask(SIG_SETMASK, [], strace: Process 24606 attached
NULL, 8) = 0
[pid 24604] <... clone resumed>, child_tidptr=0x7f54e26f0a10) = 24606
[pid 24605] rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24606] getpid( <unfinished ...>
[pid 24604] rt_sigprocmask(SIG_SETMASK, [CHLD],  <unfinished ...>
[pid 24605] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] <... getpid resumed>)       = 24606
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24605] rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] close(3 <unfinished ...>
[pid 24606] close(255 <unfinished ...>
[pid 24605] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] <... close resumed>)        = 0
[pid 24606] <... close resumed>)        = 0
[pid 24605] rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24606] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24605] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] <... rt_sigprocmask resumed>[CHLD], 8) = 0
[pid 24606] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24605] close(3 <unfinished ...>
[pid 24606] rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] rt_sigprocmask(SIG_SETMASK, [CHLD],  <unfinished ...>
[pid 24605] <... close resumed>)        = 0
[pid 24606] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24605] dup2(4, 1 <unfinished ...>
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24606] rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24605] <... dup2 resumed>)         = 1
[pid 24604] <... rt_sigprocmask resumed>[CHLD], 8) = 0
[pid 24606] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] rt_sigaction(SIGINT, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24605] close(4 <unfinished ...>
[pid 24604] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24605] <... close resumed>)        = 0
[pid 24604] wait4(-1,  <unfinished ...>
[pid 24606] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] dup2(3, 0)                  = 0
[pid 24605] rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24606] close(3 <unfinished ...>
[pid 24605] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] <... close resumed>)        = 0
[pid 24605] rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_IGN, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24605] rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] newfstatat(AT_FDCWD, ".",  <unfinished ...>
[pid 24605] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24606] <... newfstatat resumed>{st_mode=S_IFDIR|0750, st_size=4096, ...}, 0) = 0
[pid 24605] <... rt_sigprocmask resumed>[], 8) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/local/sbin/grep",  <unfinished ...>
[pid 24605] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24606] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24605] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/local/bin/grep",  <unfinished ...>
[pid 24605] ioctl(2, TIOCGPGRP <unfinished ...>
[pid 24606] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24605] <... ioctl resumed>, 0x7ffcf506f5f4) = -1 ENOTTY (Inappropriate ioctl for device)
[pid 24606] newfstatat(AT_FDCWD, "/usr/sbin/grep",  <unfinished ...>
[pid 24605] rt_sigaction(SIGCHLD, {sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24606] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24605] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/bin/grep",  <unfinished ...>
[pid 24605] rt_sigaction(SIGINT, {sa_handler=0x558f96be8500, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24606] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24605] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/bin/grep", {st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24605] newfstatat(1, "",  <unfinished ...>
[pid 24606] geteuid( <unfinished ...>
[pid 24605] <... newfstatat resumed>{st_mode=S_IFIFO|0600, st_size=0, ...}, AT_EMPTY_PATH) = 0
[pid 24606] <... geteuid resumed>)      = 0
[pid 24605] write(1, "\n", 1 <unfinished ...>
[pid 24606] getegid( <unfinished ...>
[pid 24605] <... write resumed>)        = 1
[pid 24606] <... getegid resumed>)      = 0
[pid 24606] getuid()                    = 0
[pid 24606] getgid( <unfinished ...>
[pid 24605] exit_group(0 <unfinished ...>
[pid 24606] <... getgid resumed>)       = 0
[pid 24605] <... exit_group resumed>)   = ?
[pid 24606] access("/usr/bin/grep", X_OK) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/bin/grep", {st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24606] geteuid()                   = 0
[pid 24605] +++ exited with 0 +++
[pid 24604] <... wait4 resumed>[{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 24605
[pid 24606] getegid( <unfinished ...>
[pid 24604] wait4(-1,  <unfinished ...>
[pid 24606] <... getegid resumed>)      = 0
[pid 24606] getuid()                    = 0
[pid 24606] getgid()                    = 0
[pid 24606] access("/usr/bin/grep", R_OK) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/bin/grep", {st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/bin/grep", {st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24606] geteuid()                   = 0
[pid 24606] getegid()                   = 0
[pid 24606] getuid()                    = 0
[pid 24606] getgid()                    = 0
[pid 24606] access("/usr/bin/grep", X_OK) = 0
[pid 24606] newfstatat(AT_FDCWD, "/usr/bin/grep", {st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24606] geteuid()                   = 0
[pid 24606] getegid()                   = 0
[pid 24606] getuid()                    = 0
[pid 24606] getgid()                    = 0
[pid 24606] access("/usr/bin/grep", R_OK) = 0
[pid 24606] rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_IGN, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24606] execve("/usr/bin/grep", ["grep", "-q", "^-"], 0x558f973b5dd0 /* 23 vars */) = 0
[pid 24606] brk(NULL)                   = 0x55e00a7b4000
[pid 24606] arch_prctl(0x3001 /* ARCH_??? */, 0x7ffdc3513c10) = -1 EINVAL (Invalid argument)
[pid 24606] access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=70838, ...}, AT_EMPTY_PATH) = 0
[pid 24606] mmap(NULL, 70838, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7ff79f517000
[pid 24606] close(3)                    = 0
[pid 24606] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libpcre.so.3", O_RDONLY|O_CLOEXEC) = 3
[pid 24606] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\"\0\0\0\0\0\0"..., 832) = 832
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=477296, ...}, AT_EMPTY_PATH) = 0
[pid 24606] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7ff79f515000
[pid 24606] mmap(NULL, 479504, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7ff79f49f000
[pid 24606] mmap(0x7ff79f4a1000, 344064, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000) = 0x7ff79f4a1000
[pid 24606] mmap(0x7ff79f4f5000, 122880, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x56000) = 0x7ff79f4f5000
[pid 24606] mmap(0x7ff79f513000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x73000) = 0x7ff79f513000
[pid 24606] close(3)                    = 0
[pid 24606] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libdl.so.2", O_RDONLY|O_CLOEXEC) = 3
[pid 24606] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0 \"\0\0\0\0\0\0"..., 832) = 832
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=22912, ...}, AT_EMPTY_PATH) = 0
[pid 24606] mmap(NULL, 24848, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7ff79f498000
[pid 24606] mmap(0x7ff79f49a000, 8192, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000) = 0x7ff79f49a000
[pid 24606] mmap(0x7ff79f49c000, 4096, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000) = 0x7ff79f49c000
[pid 24606] mmap(0x7ff79f49d000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000) = 0x7ff79f49d000
[pid 24606] close(3)                    = 0
[pid 24606] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
[pid 24606] read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\206\2\0\0\0\0\0"..., 832) = 832
[pid 24606] pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24606] pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
[pid 24606] pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0+H)\227\201T\214\233\304R\352\306\3379\220%"..., 68, 896) = 68
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0755, st_size=1983576, ...}, AT_EMPTY_PATH) = 0
[pid 24606] pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24606] mmap(NULL, 2012056, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7ff79f2ac000
[pid 24606] mmap(0x7ff79f2d2000, 1486848, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x26000) = 0x7ff79f2d2000
[pid 24606] mmap(0x7ff79f43d000, 311296, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x191000) = 0x7ff79f43d000
[pid 24606] mmap(0x7ff79f489000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1dc000) = 0x7ff79f489000
[pid 24606] mmap(0x7ff79f48f000, 33688, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7ff79f48f000
[pid 24606] close(3)                    = 0
[pid 24606] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libpthread.so.0", O_RDONLY|O_CLOEXEC) = 3
[pid 24606] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\340\200\0\0\0\0\0\0"..., 832) = 832
[pid 24606] pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 792) = 48
[pid 24606] pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\270<\302\35\177\205gAq\255\235\6`\247\325r"..., 68, 840) = 68
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0755, st_size=150720, ...}, AT_EMPTY_PATH) = 0
[pid 24606] mmap(NULL, 136240, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7ff79f28a000
[pid 24606] mmap(0x7ff79f291000, 65536, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x7000) = 0x7ff79f291000
[pid 24606] mmap(0x7ff79f2a1000, 20480, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x17000) = 0x7ff79f2a1000
[pid 24606] mmap(0x7ff79f2a6000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1b000) = 0x7ff79f2a6000
[pid 24606] mmap(0x7ff79f2a8000, 13360, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7ff79f2a8000
[pid 24606] close(3)                    = 0
[pid 24606] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7ff79f288000
[pid 24606] arch_prctl(ARCH_SET_FS, 0x7ff79f288b80) = 0
[pid 24606] mprotect(0x7ff79f489000, 12288, PROT_READ) = 0
[pid 24606] mprotect(0x7ff79f2a6000, 4096, PROT_READ) = 0
[pid 24606] mprotect(0x7ff79f49d000, 4096, PROT_READ) = 0
[pid 24606] mprotect(0x7ff79f513000, 4096, PROT_READ) = 0
[pid 24606] mprotect(0x55e00a5db000, 8192, PROT_READ) = 0
[pid 24606] mprotect(0x7ff79f55b000, 8192, PROT_READ) = 0
[pid 24606] munmap(0x7ff79f517000, 70838) = 0
[pid 24606] set_tid_address(0x7ff79f288e50) = 24606
[pid 24606] set_robust_list(0x7ff79f288e60, 24) = 0
[pid 24606] rt_sigaction(SIGRTMIN, {sa_handler=0x7ff79f291b90, sa_mask=[], sa_flags=SA_RESTORER|SA_SIGINFO, sa_restorer=0x7ff79f29e1f0}, NULL, 8) = 0
[pid 24606] rt_sigaction(SIGRT_1, {sa_handler=0x7ff79f291c30, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART|SA_SIGINFO, sa_restorer=0x7ff79f29e1f0}, NULL, 8) = 0
[pid 24606] rt_sigprocmask(SIG_UNBLOCK, [RTMIN RT_1], NULL, 8) = 0
[pid 24606] prlimit64(0, RLIMIT_STACK, NULL, {rlim_cur=8192*1024, rlim_max=RLIM64_INFINITY}) = 0
[pid 24606] brk(NULL)                   = 0x55e00a7b4000
[pid 24606] brk(0x55e00a7d5000)         = 0x55e00a7d5000
[pid 24606] openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=14553360, ...}, AT_EMPTY_PATH) = 0
[pid 24606] mmap(NULL, 14553360, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7ff79e4a6000
[pid 24606] close(3)                    = 0
[pid 24606] openat(AT_FDCWD, "/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache", O_RDONLY) = 3
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=27002, ...}, AT_EMPTY_PATH) = 0
[pid 24606] mmap(NULL, 27002, PROT_READ, MAP_SHARED, 3, 0) = 0x7ff79f522000
[pid 24606] close(3)                    = 0
[pid 24606] futex(0x7ff79f48e67c, FUTEX_WAKE_PRIVATE, 2147483647) = 0
[pid 24606] sigaltstack({ss_sp=0x55e00a5ddb00, ss_flags=0, ss_size=65536}, NULL) = 0
[pid 24606] openat(AT_FDCWD, "/usr/share/locale/locale.alias", O_RDONLY|O_CLOEXEC) = 3
[pid 24606] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=2996, ...}, AT_EMPTY_PATH) = 0
[pid 24606] read(3, "# Locale name alias data base.\n#"..., 4096) = 2996
[pid 24606] read(3, "", 4096)           = 0
[pid 24606] close(3)                    = 0
[pid 24606] openat(AT_FDCWD, "/usr/share/locale/en_US.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale/en_US.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale/en_US/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale/en.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale/en.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale/en/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale-langpack/en_US.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale-langpack/en_US.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale-langpack/en_US/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale-langpack/en.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale-langpack/en.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] openat(AT_FDCWD, "/usr/share/locale-langpack/en/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24606] rt_sigaction(SIGSEGV, {sa_handler=0x55e00a5bd160, sa_mask=[], sa_flags=SA_RESTORER|SA_ONSTACK|SA_NODEFER|SA_RESETHAND|SA_SIGINFO|0xffffffff00000000, sa_restorer=0x7ff79f2ed040}, NULL, 8) = 0
[pid 24606] fstat(0, {st_mode=S_IFIFO|0600, st_size=0, ...}) = 0
[pid 24606] lseek(0, 0, SEEK_CUR)       = -1 ESPIPE (Illegal seek)
[pid 24606] read(0, "\n", 98304)        = 1
[pid 24606] read(0, "", 98304)          = 0
[pid 24606] close(1)                    = 0
[pid 24606] close(2)                    = 0
[pid 24606] exit_group(1)               = ?
[pid 24606] +++ exited with 1 +++
<... wait4 resumed>[{WIFEXITED(s) && WEXITSTATUS(s) == 1}], 0, NULL) = 24606
rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
ioctl(2, TIOCGWINSZ, 0x7ffcf506f530)    = -1 ENOTTY (Inappropriate ioctl for device)
rt_sigprocmask(SIG_SETMASK, [CHLD], NULL, 8) = 0
close(3)                                = -1 EBADF (Bad file descriptor)
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=24605, si_uid=0, si_status=0, si_utime=0, si_stime=0} ---
wait4(-1, 0x7ffcf506f150, WNOHANG, NULL) = -1 ECHILD (No child processes)
rt_sigreturn({mask=[]})                 = 0
read(255, "\n# Only run the GUI if DISPLAY i"..., 3331) = 1936
rt_sigprocmask(SIG_BLOCK, [CHLD], [], 8) = 0
pipe([3, 4])                            = 0
rt_sigprocmask(SIG_BLOCK, NULL, [CHLD], 8) = 0
rt_sigprocmask(SIG_BLOCK, [INT TERM CHLD], [CHLD], 8) = 0
lseek(255, -177, SEEK_CUR)              = 3154
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLDstrace: Process 24607 attached
, child_tidptr=0x7f54e26f0a10) = 24607
[pid 24604] rt_sigprocmask(SIG_SETMASK, [CHLD],  <unfinished ...>
[pid 24607] getpid( <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24607] <... getpid resumed>)       = 24607
[pid 24604] close(4)                    = 0
[pid 24607] close(255 <unfinished ...>
[pid 24604] close(4 <unfinished ...>
[pid 24607] <... close resumed>)        = 0
[pid 24604] <... close resumed>)        = -1 EBADF (Bad file descriptor)
[pid 24607] rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
[pid 24604] rt_sigprocmask(SIG_BLOCK, NULL,  <unfinished ...>
[pid 24607] rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[CHLD], 8) = 0
[pid 24607] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] rt_sigprocmask(SIG_BLOCK, [INT TERM CHLD],  <unfinished ...>
[pid 24607] rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[CHLD], 8) = 0
[pid 24607] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD <unfinished ...>
[pid 24607] rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24607] close(3)                    = 0
strace: Process 24608 attached
[pid 24607] dup2(4, 1 <unfinished ...>
[pid 24604] <... clone resumed>, child_tidptr=0x7f54e26f0a10) = 24608
[pid 24608] getpid( <unfinished ...>
[pid 24607] <... dup2 resumed>)         = 1
[pid 24604] rt_sigprocmask(SIG_SETMASK, [CHLD],  <unfinished ...>
[pid 24608] <... getpid resumed>)       = 24608
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24607] close(4 <unfinished ...>
[pid 24604] close(3 <unfinished ...>
[pid 24608] close(255 <unfinished ...>
[pid 24607] <... close resumed>)        = 0
[pid 24604] <... close resumed>)        = 0
[pid 24608] <... close resumed>)        = 0
[pid 24607] newfstatat(AT_FDCWD, ".",  <unfinished ...>
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24608] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[CHLD], 8) = 0
[pid 24607] <... newfstatat resumed>{st_mode=S_IFDIR|0750, st_size=4096, ...}, 0) = 0
[pid 24608] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24604] rt_sigprocmask(SIG_SETMASK, [CHLD],  <unfinished ...>
[pid 24608] rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24607] newfstatat(AT_FDCWD, "/usr/local/sbin/cat",  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24608] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24607] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24608] rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[CHLD], 8) = 0
[pid 24607] newfstatat(AT_FDCWD, "/usr/local/bin/cat",  <unfinished ...>
[pid 24608] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] rt_sigaction(SIGINT, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24607] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24604] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24608] rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] wait4(-1,  <unfinished ...>
[pid 24607] newfstatat(AT_FDCWD, "/usr/sbin/cat",  <unfinished ...>
[pid 24608] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24607] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24608] dup2(3, 0 <unfinished ...>
[pid 24607] newfstatat(AT_FDCWD, "/usr/bin/cat",  <unfinished ...>
[pid 24608] <... dup2 resumed>)         = 0
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=43568, ...}, 0) = 0
[pid 24608] close(3 <unfinished ...>
[pid 24607] newfstatat(AT_FDCWD, "/usr/bin/cat",  <unfinished ...>
[pid 24608] <... close resumed>)        = 0
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=43568, ...}, 0) = 0
[pid 24607] geteuid()                   = 0
[pid 24607] getegid( <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, ".",  <unfinished ...>
[pid 24607] <... getegid resumed>)      = 0
[pid 24608] <... newfstatat resumed>{st_mode=S_IFDIR|0750, st_size=4096, ...}, 0) = 0
[pid 24607] getuid( <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/local/sbin/grep",  <unfinished ...>
[pid 24607] <... getuid resumed>)       = 0
[pid 24608] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24607] getgid( <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/local/bin/grep",  <unfinished ...>
[pid 24607] <... getgid resumed>)       = 0
[pid 24608] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24607] access("/usr/bin/cat", X_OK <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/sbin/grep",  <unfinished ...>
[pid 24607] <... access resumed>)       = 0
[pid 24608] <... newfstatat resumed>0x7ffcf506f3d0, 0) = -1 ENOENT (No such file or directory)
[pid 24607] newfstatat(AT_FDCWD, "/usr/bin/cat",  <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/bin/grep",  <unfinished ...>
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=43568, ...}, 0) = 0
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24607] geteuid( <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/bin/grep",  <unfinished ...>
[pid 24607] <... geteuid resumed>)      = 0
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24607] getegid( <unfinished ...>
[pid 24608] geteuid( <unfinished ...>
[pid 24607] <... getegid resumed>)      = 0
[pid 24608] <... geteuid resumed>)      = 0
[pid 24607] getuid( <unfinished ...>
[pid 24608] getegid( <unfinished ...>
[pid 24607] <... getuid resumed>)       = 0
[pid 24608] <... getegid resumed>)      = 0
[pid 24607] getgid( <unfinished ...>
[pid 24608] getuid( <unfinished ...>
[pid 24607] <... getgid resumed>)       = 0
[pid 24608] <... getuid resumed>)       = 0
[pid 24607] access("/usr/bin/cat", R_OK <unfinished ...>
[pid 24608] getgid( <unfinished ...>
[pid 24607] <... access resumed>)       = 0
[pid 24608] <... getgid resumed>)       = 0
[pid 24607] newfstatat(AT_FDCWD, "/usr/bin/cat",  <unfinished ...>
[pid 24608] access("/usr/bin/grep", X_OK <unfinished ...>
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=43568, ...}, 0) = 0
[pid 24608] <... access resumed>)       = 0
[pid 24607] newfstatat(AT_FDCWD, "/usr/bin/cat",  <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/bin/grep",  <unfinished ...>
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=43568, ...}, 0) = 0
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24607] geteuid( <unfinished ...>
[pid 24608] geteuid( <unfinished ...>
[pid 24607] <... geteuid resumed>)      = 0
[pid 24608] <... geteuid resumed>)      = 0
[pid 24607] getegid( <unfinished ...>
[pid 24608] getegid( <unfinished ...>
[pid 24607] <... getegid resumed>)      = 0
[pid 24608] <... getegid resumed>)      = 0
[pid 24607] getuid( <unfinished ...>
[pid 24608] getuid( <unfinished ...>
[pid 24607] <... getuid resumed>)       = 0
[pid 24608] <... getuid resumed>)       = 0
[pid 24607] getgid( <unfinished ...>
[pid 24608] getgid( <unfinished ...>
[pid 24607] <... getgid resumed>)       = 0
[pid 24608] <... getgid resumed>)       = 0
[pid 24607] access("/usr/bin/cat", X_OK <unfinished ...>
[pid 24608] access("/usr/bin/grep", R_OK <unfinished ...>
[pid 24607] <... access resumed>)       = 0
[pid 24608] <... access resumed>)       = 0
[pid 24607] newfstatat(AT_FDCWD, "/usr/bin/cat",  <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/bin/grep",  <unfinished ...>
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=43568, ...}, 0) = 0
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24607] geteuid( <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/bin/grep",  <unfinished ...>
[pid 24607] <... geteuid resumed>)      = 0
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24607] getegid( <unfinished ...>
[pid 24608] geteuid( <unfinished ...>
[pid 24607] <... getegid resumed>)      = 0
[pid 24608] <... geteuid resumed>)      = 0
[pid 24607] getuid( <unfinished ...>
[pid 24608] getegid( <unfinished ...>
[pid 24607] <... getuid resumed>)       = 0
[pid 24608] <... getegid resumed>)      = 0
[pid 24607] getgid( <unfinished ...>
[pid 24608] getuid( <unfinished ...>
[pid 24607] <... getgid resumed>)       = 0
[pid 24608] <... getuid resumed>)       = 0
[pid 24607] access("/usr/bin/cat", R_OK <unfinished ...>
[pid 24608] getgid( <unfinished ...>
[pid 24607] <... access resumed>)       = 0
[pid 24608] <... getgid resumed>)       = 0
[pid 24608] access("/usr/bin/grep", X_OK) = 0
[pid 24607] rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24608] newfstatat(AT_FDCWD, "/usr/bin/grep",  <unfinished ...>
[pid 24607] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=203232, ...}, 0) = 0
[pid 24607] rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24608] geteuid( <unfinished ...>
[pid 24607] <... rt_sigaction resumed>{sa_handler=SIG_IGN, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24608] <... geteuid resumed>)      = 0
[pid 24607] rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24608] getegid( <unfinished ...>
[pid 24607] <... rt_sigaction resumed>{sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24608] <... getegid resumed>)      = 0
[pid 24607] execve("/usr/bin/cat", ["cat", "/usr/lib/vmware/modules/modules."...], 0x558f973b5dd0 /* 23 vars */ <unfinished ...>
[pid 24608] getuid()                    = 0
[pid 24608] getgid()                    = 0
[pid 24608] access("/usr/bin/grep", R_OK) = 0
[pid 24608] rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24608] rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24607] <... execve resumed>)       = 0
[pid 24608] <... rt_sigaction resumed>{sa_handler=SIG_IGN, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24608] rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24607] brk(NULL <unfinished ...>
[pid 24608] <... rt_sigaction resumed>{sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24607] <... brk resumed>)          = 0x55746973a000
[pid 24608] execve("/usr/bin/grep", ["grep", "-q", "name=\"vmci\""], 0x558f973b5dd0 /* 23 vars */ <unfinished ...>
[pid 24607] arch_prctl(0x3001 /* ARCH_??? */, 0x7ffd76bfeab0) = -1 EINVAL (Invalid argument)
[pid 24607] access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
[pid 24607] openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
[pid 24607] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=70838, ...}, AT_EMPTY_PATH) = 0
[pid 24608] <... execve resumed>)       = 0
[pid 24607] mmap(NULL, 70838, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f8e74d43000
[pid 24608] brk(NULL <unfinished ...>
[pid 24607] close(3 <unfinished ...>
[pid 24608] <... brk resumed>)          = 0x56509538e000
[pid 24607] <... close resumed>)        = 0
[pid 24608] arch_prctl(0x3001 /* ARCH_??? */, 0x7fffded4ef90 <unfinished ...>
[pid 24607] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC <unfinished ...>
[pid 24608] <... arch_prctl resumed>)   = -1 EINVAL (Invalid argument)
[pid 24607] <... openat resumed>)       = 3
[pid 24607] read(3,  <unfinished ...>
[pid 24608] access("/etc/ld.so.preload", R_OK <unfinished ...>
[pid 24607] <... read resumed>"\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\206\2\0\0\0\0\0"..., 832) = 832
[pid 24608] <... access resumed>)       = -1 ENOENT (No such file or directory)
[pid 24607] pread64(3,  <unfinished ...>
[pid 24608] openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC <unfinished ...>
[pid 24607] <... pread64 resumed>"\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24608] <... openat resumed>)       = 3
[pid 24607] pread64(3,  <unfinished ...>
[pid 24608] newfstatat(3, "",  <unfinished ...>
[pid 24607] <... pread64 resumed>"\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0644, st_size=70838, ...}, AT_EMPTY_PATH) = 0
[pid 24607] pread64(3,  <unfinished ...>
[pid 24608] mmap(NULL, 70838, PROT_READ, MAP_PRIVATE, 3, 0 <unfinished ...>
[pid 24607] <... pread64 resumed>"\4\0\0\0\24\0\0\0\3\0\0\0GNU\0+H)\227\201T\214\233\304R\352\306\3379\220%"..., 68, 896) = 68
[pid 24608] <... mmap resumed>)         = 0x7f06ba6dc000
[pid 24607] newfstatat(3, "",  <unfinished ...>
[pid 24608] close(3 <unfinished ...>
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=1983576, ...}, AT_EMPTY_PATH) = 0
[pid 24608] <... close resumed>)        = 0
[pid 24607] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0 <unfinished ...>
[pid 24608] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libpcre.so.3", O_RDONLY|O_CLOEXEC <unfinished ...>
[pid 24607] <... mmap resumed>)         = 0x7f8e74d41000
[pid 24608] <... openat resumed>)       = 3
[pid 24607] pread64(3,  <unfinished ...>
[pid 24608] read(3,  <unfinished ...>
[pid 24607] <... pread64 resumed>"\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24608] <... read resumed>"\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\"\0\0\0\0\0\0"..., 832) = 832
[pid 24607] mmap(NULL, 2012056, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0 <unfinished ...>
[pid 24608] newfstatat(3, "",  <unfinished ...>
[pid 24607] <... mmap resumed>)         = 0x7f8e74b55000
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0644, st_size=477296, ...}, AT_EMPTY_PATH) = 0
[pid 24607] mmap(0x7f8e74b7b000, 1486848, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x26000 <unfinished ...>
[pid 24608] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0 <unfinished ...>
[pid 24607] <... mmap resumed>)         = 0x7f8e74b7b000
[pid 24608] <... mmap resumed>)         = 0x7f06ba6da000
[pid 24607] mmap(0x7f8e74ce6000, 311296, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x191000 <unfinished ...>
[pid 24608] mmap(NULL, 479504, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0 <unfinished ...>
[pid 24607] <... mmap resumed>)         = 0x7f8e74ce6000
[pid 24608] <... mmap resumed>)         = 0x7f06ba664000
[pid 24607] mmap(0x7f8e74d32000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1dc000 <unfinished ...>
[pid 24608] mmap(0x7f06ba666000, 344064, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000 <unfinished ...>
[pid 24607] <... mmap resumed>)         = 0x7f8e74d32000
[pid 24608] <... mmap resumed>)         = 0x7f06ba666000
[pid 24607] mmap(0x7f8e74d38000, 33688, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0 <unfinished ...>
[pid 24608] mmap(0x7f06ba6ba000, 122880, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x56000 <unfinished ...>
[pid 24607] <... mmap resumed>)         = 0x7f8e74d38000
[pid 24608] <... mmap resumed>)         = 0x7f06ba6ba000
[pid 24608] mmap(0x7f06ba6d8000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x73000 <unfinished ...>
[pid 24607] close(3 <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba6d8000
[pid 24607] <... close resumed>)        = 0
[pid 24608] close(3 <unfinished ...>
[pid 24607] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0 <unfinished ...>
[pid 24608] <... close resumed>)        = 0
[pid 24607] <... mmap resumed>)         = 0x7f8e74b53000
[pid 24608] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libdl.so.2", O_RDONLY|O_CLOEXEC <unfinished ...>
[pid 24607] arch_prctl(ARCH_SET_FS, 0x7f8e74d425c0 <unfinished ...>
[pid 24608] <... openat resumed>)       = 3
[pid 24607] <... arch_prctl resumed>)   = 0
[pid 24608] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0 \"\0\0\0\0\0\0"..., 832) = 832
[pid 24608] newfstatat(3, "",  <unfinished ...>
[pid 24607] mprotect(0x7f8e74d32000, 12288, PROT_READ <unfinished ...>
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0644, st_size=22912, ...}, AT_EMPTY_PATH) = 0
[pid 24607] <... mprotect resumed>)     = 0
[pid 24608] mmap(NULL, 24848, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f06ba65d000
[pid 24607] mprotect(0x55746843b000, 4096, PROT_READ <unfinished ...>
[pid 24608] mmap(0x7f06ba65f000, 8192, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000 <unfinished ...>
[pid 24607] <... mprotect resumed>)     = 0
[pid 24608] <... mmap resumed>)         = 0x7f06ba65f000
[pid 24607] mprotect(0x7f8e74d87000, 8192, PROT_READ <unfinished ...>
[pid 24608] mmap(0x7f06ba661000, 4096, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000 <unfinished ...>
[pid 24607] <... mprotect resumed>)     = 0
[pid 24608] <... mmap resumed>)         = 0x7f06ba661000
[pid 24608] mmap(0x7f06ba662000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000 <unfinished ...>
[pid 24607] munmap(0x7f8e74d43000, 70838 <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba662000
[pid 24607] <... munmap resumed>)       = 0
[pid 24608] close(3)                    = 0
[pid 24608] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC <unfinished ...>
[pid 24607] brk(NULL <unfinished ...>
[pid 24608] <... openat resumed>)       = 3
[pid 24607] <... brk resumed>)          = 0x55746973a000
[pid 24608] read(3,  <unfinished ...>
[pid 24607] brk(0x55746975b000 <unfinished ...>
[pid 24608] <... read resumed>"\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\206\2\0\0\0\0\0"..., 832) = 832
[pid 24607] <... brk resumed>)          = 0x55746975b000
[pid 24608] pread64(3,  <unfinished ...>
[pid 24607] openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC <unfinished ...>
[pid 24608] <... pread64 resumed>"\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24607] <... openat resumed>)       = 3
[pid 24608] pread64(3,  <unfinished ...>
[pid 24607] newfstatat(3, "",  <unfinished ...>
[pid 24608] <... pread64 resumed>"\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
[pid 24607] <... newfstatat resumed>{st_mode=S_IFREG|0644, st_size=14553360, ...}, AT_EMPTY_PATH) = 0
[pid 24608] pread64(3,  <unfinished ...>
[pid 24607] mmap(NULL, 14553360, PROT_READ, MAP_PRIVATE, 3, 0 <unfinished ...>
[pid 24608] <... pread64 resumed>"\4\0\0\0\24\0\0\0\3\0\0\0GNU\0+H)\227\201T\214\233\304R\352\306\3379\220%"..., 68, 896) = 68
[pid 24607] <... mmap resumed>)         = 0x7f8e73d71000
[pid 24608] newfstatat(3, "",  <unfinished ...>
[pid 24607] close(3 <unfinished ...>
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=1983576, ...}, AT_EMPTY_PATH) = 0
[pid 24607] <... close resumed>)        = 0
[pid 24608] pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24608] mmap(NULL, 2012056, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0 <unfinished ...>
[pid 24607] fstat(1,  <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba471000
[pid 24607] <... fstat resumed>{st_mode=S_IFIFO|0600, st_size=0, ...}) = 0
[pid 24608] mmap(0x7f06ba497000, 1486848, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x26000 <unfinished ...>
[pid 24607] openat(AT_FDCWD, "/usr/lib/vmware/modules/modules.xml", O_RDONLY <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba497000
[pid 24607] <... openat resumed>)       = 3
[pid 24608] mmap(0x7f06ba602000, 311296, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x191000 <unfinished ...>
[pid 24607] fstat(3,  <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba602000
[pid 24607] <... fstat resumed>{st_mode=S_IFREG|0644, st_size=521, ...}) = 0
[pid 24608] mmap(0x7f06ba64e000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1dc000 <unfinished ...>
[pid 24607] fadvise64(3, 0, 0, POSIX_FADV_SEQUENTIAL <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba64e000
[pid 24607] <... fadvise64 resumed>)    = 0
[pid 24608] mmap(0x7f06ba654000, 33688, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0 <unfinished ...>
[pid 24607] mmap(NULL, 139264, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0 <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba654000
[pid 24607] <... mmap resumed>)         = 0x7f8e73d4f000
[pid 24608] close(3 <unfinished ...>
[pid 24607] read(3,  <unfinished ...>
[pid 24608] <... close resumed>)        = 0
[pid 24607] <... read resumed>"<?xml version=\"1.0\" encoding=\"ut"..., 131072) = 521
[pid 24608] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libpthread.so.0", O_RDONLY|O_CLOEXEC <unfinished ...>
[pid 24607] write(1, "<?xml version=\"1.0\" encoding=\"ut"..., 521 <unfinished ...>
[pid 24608] <... openat resumed>)       = 3
[pid 24607] <... write resumed>)        = 521
[pid 24608] read(3,  <unfinished ...>
[pid 24607] read(3,  <unfinished ...>
[pid 24608] <... read resumed>"\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\340\200\0\0\0\0\0\0"..., 832) = 832
[pid 24607] <... read resumed>"", 131072) = 0
[pid 24608] pread64(3,  <unfinished ...>
[pid 24607] munmap(0x7f8e73d4f000, 139264 <unfinished ...>
[pid 24608] <... pread64 resumed>"\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 792) = 48
[pid 24607] <... munmap resumed>)       = 0
[pid 24608] pread64(3,  <unfinished ...>
[pid 24607] close(3 <unfinished ...>
[pid 24608] <... pread64 resumed>"\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\270<\302\35\177\205gAq\255\235\6`\247\325r"..., 68, 840) = 68
[pid 24607] <... close resumed>)        = 0
[pid 24608] newfstatat(3, "",  <unfinished ...>
[pid 24607] close(1 <unfinished ...>
[pid 24608] <... newfstatat resumed>{st_mode=S_IFREG|0755, st_size=150720, ...}, AT_EMPTY_PATH) = 0
[pid 24607] <... close resumed>)        = 0
[pid 24608] mmap(NULL, 136240, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0 <unfinished ...>
[pid 24607] close(2 <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba44f000
[pid 24607] <... close resumed>)        = 0
[pid 24608] mmap(0x7f06ba456000, 65536, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x7000 <unfinished ...>
[pid 24607] exit_group(0 <unfinished ...>
[pid 24608] <... mmap resumed>)         = 0x7f06ba456000
[pid 24607] <... exit_group resumed>)   = ?
[pid 24608] mmap(0x7f06ba466000, 20480, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x17000) = 0x7f06ba466000
[pid 24608] mmap(0x7f06ba46b000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1b000) = 0x7f06ba46b000
[pid 24608] mmap(0x7f06ba46d000, 13360, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0 <unfinished ...>
[pid 24607] +++ exited with 0 +++
[pid 24604] <... wait4 resumed>[{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 24607
[pid 24608] <... mmap resumed>)         = 0x7f06ba46d000
[pid 24604] wait4(-1,  <unfinished ...>
[pid 24608] close(3)                    = 0
[pid 24608] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f06ba44d000
[pid 24608] arch_prctl(ARCH_SET_FS, 0x7f06ba44db80) = 0
[pid 24608] mprotect(0x7f06ba64e000, 12288, PROT_READ) = 0
[pid 24608] mprotect(0x7f06ba46b000, 4096, PROT_READ) = 0
[pid 24608] mprotect(0x7f06ba662000, 4096, PROT_READ) = 0
[pid 24608] mprotect(0x7f06ba6d8000, 4096, PROT_READ) = 0
[pid 24608] mprotect(0x56509408a000, 8192, PROT_READ) = 0
[pid 24608] mprotect(0x7f06ba720000, 8192, PROT_READ) = 0
[pid 24608] munmap(0x7f06ba6dc000, 70838) = 0
[pid 24608] set_tid_address(0x7f06ba44de50) = 24608
[pid 24608] set_robust_list(0x7f06ba44de60, 24) = 0
[pid 24608] rt_sigaction(SIGRTMIN, {sa_handler=0x7f06ba456b90, sa_mask=[], sa_flags=SA_RESTORER|SA_SIGINFO, sa_restorer=0x7f06ba4631f0}, NULL, 8) = 0
[pid 24608] rt_sigaction(SIGRT_1, {sa_handler=0x7f06ba456c30, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART|SA_SIGINFO, sa_restorer=0x7f06ba4631f0}, NULL, 8) = 0
[pid 24608] rt_sigprocmask(SIG_UNBLOCK, [RTMIN RT_1], NULL, 8) = 0
[pid 24608] prlimit64(0, RLIMIT_STACK, NULL, {rlim_cur=8192*1024, rlim_max=RLIM64_INFINITY}) = 0
[pid 24608] brk(NULL)                   = 0x56509538e000
[pid 24608] brk(0x5650953af000)         = 0x5650953af000
[pid 24608] openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
[pid 24608] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=14553360, ...}, AT_EMPTY_PATH) = 0
[pid 24608] mmap(NULL, 14553360, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f06b966b000
[pid 24608] close(3)                    = 0
[pid 24608] openat(AT_FDCWD, "/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache", O_RDONLY) = 3
[pid 24608] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=27002, ...}, AT_EMPTY_PATH) = 0
[pid 24608] mmap(NULL, 27002, PROT_READ, MAP_SHARED, 3, 0) = 0x7f06ba6e7000
[pid 24608] close(3)                    = 0
[pid 24608] futex(0x7f06ba65367c, FUTEX_WAKE_PRIVATE, 2147483647) = 0
[pid 24608] sigaltstack({ss_sp=0x56509408cb00, ss_flags=0, ss_size=65536}, NULL) = 0
[pid 24608] openat(AT_FDCWD, "/usr/share/locale/locale.alias", O_RDONLY|O_CLOEXEC) = 3
[pid 24608] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=2996, ...}, AT_EMPTY_PATH) = 0
[pid 24608] read(3, "# Locale name alias data base.\n#"..., 4096) = 2996
[pid 24608] read(3, "", 4096)           = 0
[pid 24608] close(3)                    = 0
[pid 24608] openat(AT_FDCWD, "/usr/share/locale/en_US.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale/en_US.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale/en_US/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale/en.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale/en.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale/en/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale-langpack/en_US.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale-langpack/en_US.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale-langpack/en_US/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale-langpack/en.UTF-8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale-langpack/en.utf8/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] openat(AT_FDCWD, "/usr/share/locale-langpack/en/LC_MESSAGES/grep.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24608] rt_sigaction(SIGSEGV, {sa_handler=0x56509406c160, sa_mask=[], sa_flags=SA_RESTORER|SA_ONSTACK|SA_NODEFER|SA_RESETHAND|SA_SIGINFO|0xffffffff00000000, sa_restorer=0x7f06ba4b2040}, NULL, 8) = 0
[pid 24608] brk(0x5650953d0000)         = 0x5650953d0000
[pid 24608] fstat(0, {st_mode=S_IFIFO|0600, st_size=0, ...}) = 0
[pid 24608] lseek(0, 0, SEEK_CUR)       = -1 ESPIPE (Illegal seek)
[pid 24608] read(0, "<?xml version=\"1.0\" encoding=\"ut"..., 98304) = 521
[pid 24608] close(1)                    = 0
[pid 24608] close(2)                    = 0
[pid 24608] exit_group(0)               = ?
[pid 24608] +++ exited with 0 +++
<... wait4 resumed>[{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 24608
rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
ioctl(2, TIOCGWINSZ, 0x7ffcf506f530)    = -1 ENOTTY (Inappropriate ioctl for device)
rt_sigprocmask(SIG_SETMASK, [CHLD], NULL, 8) = 0
close(3)                                = -1 EBADF (Bad file descriptor)
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=24607, si_uid=0, si_status=0, si_utime=0, si_stime=0} ---
wait4(-1, 0x7ffcf506f150, WNOHANG, NULL) = -1 ECHILD (No child processes)
rt_sigreturn({mask=[]})                 = 0
read(255, "\nif \"$BINDIR\"/vmware-modconfig -"..., 3331) = 177
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
rt_sigprocmask(SIG_BLOCK, [INT TERM CHLD], [], 8) = 0
lseek(255, -8, SEEK_CUR)                = 3323
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLDstrace: Process 24609 attached
, child_tidptr=0x7f54e26f0a10) = 24609
[pid 24604] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24609] getpid( <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24609] <... getpid resumed>)       = 24609
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24609] close(255 <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[], 8) = 0
[pid 24609] <... close resumed>)        = 0
[pid 24604] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24609] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24609] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24609] rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[], 8) = 0
[pid 24609] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] rt_sigaction(SIGINT, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24609] rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24609] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] wait4(-1,  <unfinished ...>
[pid 24609] rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24609] rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24609] rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_IGN, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24609] rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24609] execve("/usr/bin/vmware-modconfig", ["/usr/bin/vmware-modconfig", "--appname=VMware Workstation", "--icon=vmware-workstation"], 0x558f973b5dd0 /* 23 vars */) = 0
[pid 24609] brk(NULL)                   = 0x556d1afa0000
[pid 24609] arch_prctl(0x3001 /* ARCH_??? */, 0x7ffebf939330) = -1 EINVAL (Invalid argument)
[pid 24609] access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
[pid 24609] openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
[pid 24609] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=70838, ...}, AT_EMPTY_PATH) = 0
[pid 24609] mmap(NULL, 70838, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f362c372000
[pid 24609] close(3)                    = 0
[pid 24609] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
[pid 24609] read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\206\2\0\0\0\0\0"..., 832) = 832
[pid 24609] pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24609] pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
[pid 24609] pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0+H)\227\201T\214\233\304R\352\306\3379\220%"..., 68, 896) = 68
[pid 24609] newfstatat(3, "", {st_mode=S_IFREG|0755, st_size=1983576, ...}, AT_EMPTY_PATH) = 0
[pid 24609] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f362c370000
[pid 24609] pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24609] mmap(NULL, 2012056, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f362c184000
[pid 24609] mmap(0x7f362c1aa000, 1486848, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x26000) = 0x7f362c1aa000
[pid 24609] mmap(0x7f362c315000, 311296, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x191000) = 0x7f362c315000
[pid 24609] mmap(0x7f362c361000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1dc000) = 0x7f362c361000
[pid 24609] mmap(0x7f362c367000, 33688, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f362c367000
[pid 24609] close(3)                    = 0
[pid 24609] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f362c182000
[pid 24609] arch_prctl(ARCH_SET_FS, 0x7f362c3715c0) = 0
[pid 24609] mprotect(0x7f362c361000, 12288, PROT_READ) = 0
[pid 24609] mprotect(0x556d1ab14000, 4096, PROT_READ) = 0
[pid 24609] mprotect(0x7f362c3b6000, 8192, PROT_READ) = 0
[pid 24609] munmap(0x7f362c372000, 70838) = 0
[pid 24609] exit_group(0)               = ?
[pid 24609] +++ exited with 0 +++
<... wait4 resumed>[{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 24609
rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
ioctl(2, TIOCGWINSZ, 0x7ffcf506f6b0)    = -1 ENOTTY (Inappropriate ioctl for device)
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=24609, si_uid=0, si_status=0, si_utime=0, si_stime=0} ---
wait4(-1, 0x7ffcf506ef10, WNOHANG, NULL) = -1 ECHILD (No child processes)
rt_sigreturn({mask=[]})                 = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
rt_sigprocmask(SIG_BLOCK, [INT TERM CHLD], [], 8) = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLDstrace: Process 24610 attached
, child_tidptr=0x7f54e26f0a10) = 24610
[pid 24604] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24610] getpid( <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24610] <... getpid resumed>)       = 24610
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24610] close(255 <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[], 8) = 0
[pid 24610] <... close resumed>)        = 0
[pid 24604] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24610] rt_sigprocmask(SIG_SETMASK, [],  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24610] <... rt_sigprocmask resumed>NULL, 8) = 0
[pid 24604] rt_sigprocmask(SIG_BLOCK, [CHLD],  <unfinished ...>
[pid 24610] rt_sigaction(SIGTSTP, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] <... rt_sigprocmask resumed>[], 8) = 0
[pid 24610] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] rt_sigaction(SIGINT, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24610] rt_sigaction(SIGTTIN, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040},  <unfinished ...>
[pid 24604] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24610] <... rt_sigaction resumed>{sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24604] wait4(-1,  <unfinished ...>
[pid 24610] rt_sigaction(SIGTTOU, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24610] rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24610] rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=SIG_IGN, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24610] rt_sigaction(SIGCHLD, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bbef20, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART, sa_restorer=0x7f54e2734040}, 8) = 0
[pid 24610] openat(AT_FDCWD, "/dev/null", O_WRONLY|O_CREAT|O_TRUNC, 0666) = 3
[pid 24610] dup2(3, 1)                  = 1
[pid 24610] close(3)                    = 0
[pid 24610] dup2(1, 2)                  = 2
[pid 24610] fcntl(1, F_GETFD)           = 0
[pid 24610] execve("/sbin/modprobe", ["/sbin/modprobe", "-n", "vmmon"], 0x558f973b5dd0 /* 23 vars */) = 0
[pid 24610] brk(NULL)                   = 0x56247e7cf000
[pid 24610] arch_prctl(0x3001 /* ARCH_??? */, 0x7fff45a01870) = -1 EINVAL (Invalid argument)
[pid 24610] access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
[pid 24610] openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=70838, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 70838, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7faecd5f7000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/liblzma.so.5", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\3003\0\0\0\0\0\0"..., 832) = 832
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=170456, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7faecd5f5000
[pid 24610] mmap(NULL, 172296, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7faecd5ca000
[pid 24610] mmap(0x7faecd5cd000, 110592, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x3000) = 0x7faecd5cd000
[pid 24610] mmap(0x7faecd5e8000, 45056, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1e000) = 0x7faecd5e8000
[pid 24610] mmap(0x7faecd5f3000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x28000) = 0x7faecd5f3000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libcrypto.so.1.1", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\0\240\7\0\0\0\0\0"..., 832) = 832
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=2966384, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 2985736, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7faecd2f1000
[pid 24610] mmap(0x7faecd369000, 1712128, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x78000) = 0x7faecd369000
[pid 24610] mmap(0x7faecd50b000, 577536, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x21a000) = 0x7faecd50b000
[pid 24610] mmap(0x7faecd598000, 188416, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2a6000) = 0x7faecd598000
[pid 24610] mmap(0x7faecd5c6000, 16136, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7faecd5c6000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\206\2\0\0\0\0\0"..., 832) = 832
[pid 24610] pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24610] pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
[pid 24610] pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0+H)\227\201T\214\233\304R\352\306\3379\220%"..., 68, 896) = 68
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0755, st_size=1983576, ...}, AT_EMPTY_PATH) = 0
[pid 24610] pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
[pid 24610] mmap(NULL, 2012056, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7faecd105000
[pid 24610] mmap(0x7faecd12b000, 1486848, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x26000) = 0x7faecd12b000
[pid 24610] mmap(0x7faecd296000, 311296, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x191000) = 0x7faecd296000
[pid 24610] mmap(0x7faecd2e2000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1dc000) = 0x7faecd2e2000
[pid 24610] mmap(0x7faecd2e8000, 33688, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7faecd2e8000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libpthread.so.0", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\340\200\0\0\0\0\0\0"..., 832) = 832
[pid 24610] pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 792) = 48
[pid 24610] pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\270<\302\35\177\205gAq\255\235\6`\247\325r"..., 68, 840) = 68
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0755, st_size=150720, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 136240, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7faecd0e3000
[pid 24610] mmap(0x7faecd0ea000, 65536, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x7000) = 0x7faecd0ea000
[pid 24610] mmap(0x7faecd0fa000, 20480, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x17000) = 0x7faecd0fa000
[pid 24610] mmap(0x7faecd0ff000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1b000) = 0x7faecd0ff000
[pid 24610] mmap(0x7faecd101000, 13360, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7faecd101000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libdl.so.2", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0 \"\0\0\0\0\0\0"..., 832) = 832
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=22912, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 24848, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7faecd0dc000
[pid 24610] mmap(0x7faecd0de000, 8192, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000) = 0x7faecd0de000
[pid 24610] mmap(0x7faecd0e0000, 4096, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000) = 0x7faecd0e0000
[pid 24610] mmap(0x7faecd0e1000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x4000) = 0x7faecd0e1000
[pid 24610] close(3)                    = 0
[pid 24610] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7faecd0da000
[pid 24610] mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7faecd0d8000
[pid 24610] arch_prctl(ARCH_SET_FS, 0x7faecd0db580) = 0
[pid 24610] mprotect(0x7faecd2e2000, 12288, PROT_READ) = 0
[pid 24610] mprotect(0x7faecd0e1000, 4096, PROT_READ) = 0
[pid 24610] mprotect(0x7faecd0ff000, 4096, PROT_READ) = 0
[pid 24610] mprotect(0x7faecd598000, 180224, PROT_READ) = 0
[pid 24610] mprotect(0x7faecd5f3000, 4096, PROT_READ) = 0
[pid 24610] mprotect(0x56247d078000, 8192, PROT_READ) = 0
[pid 24610] mprotect(0x7faecd63b000, 8192, PROT_READ) = 0
[pid 24610] munmap(0x7faecd5f7000, 70838) = 0
[pid 24610] set_tid_address(0x7faecd0db850) = 24610
[pid 24610] set_robust_list(0x7faecd0db860, 24) = 0
[pid 24610] rt_sigaction(SIGRTMIN, {sa_handler=0x7faecd0eab90, sa_mask=[], sa_flags=SA_RESTORER|SA_SIGINFO, sa_restorer=0x7faecd0f71f0}, NULL, 8) = 0
[pid 24610] rt_sigaction(SIGRT_1, {sa_handler=0x7faecd0eac30, sa_mask=[], sa_flags=SA_RESTORER|SA_RESTART|SA_SIGINFO, sa_restorer=0x7faecd0f71f0}, NULL, 8) = 0
[pid 24610] rt_sigprocmask(SIG_UNBLOCK, [RTMIN RT_1], NULL, 8) = 0
[pid 24610] prlimit64(0, RLIMIT_STACK, NULL, {rlim_cur=8192*1024, rlim_max=RLIM64_INFINITY}) = 0
[pid 24610] brk(NULL)                   = 0x56247e7cf000
[pid 24610] brk(0x56247e7f0000)         = 0x56247e7f0000
[pid 24610] uname({sysname="Linux", nodename="DT1", ...}) = 0
[pid 24610] newfstatat(AT_FDCWD, "/etc/modprobe.d", {st_mode=S_IFDIR|0755, st_size=4096, ...}, 0) = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFDIR|0755, st_size=4096, ...}, AT_EMPTY_PATH) = 0
[pid 24610] getdents64(3, 0x56247e7cf450 /* 15 entries */, 32768) = 616
[pid 24610] newfstatat(3, "alsa-base.conf", {st_mode=S_IFREG|0644, st_size=2507, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist-firewire.conf", {st_mode=S_IFREG|0644, st_size=210, ...}, 0) = 0
[pid 24610] newfstatat(3, "iwlwifi.conf", {st_mode=S_IFREG|0644, st_size=347, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist.conf", {st_mode=S_IFREG|0644, st_size=1518, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist-modem.conf", {st_mode=S_IFREG|0644, st_size=156, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist-framebuffer.conf", {st_mode=S_IFREG|0644, st_size=677, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist-oss.conf", {st_mode=S_IFREG|0644, st_size=1059, ...}, 0) = 0
[pid 24610] newfstatat(3, "amd64-microcode-blacklist.conf", {st_mode=S_IFREG|0644, st_size=154, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist-ath_pci.conf", {st_mode=S_IFREG|0644, st_size=325, ...}, 0) = 0
[pid 24610] newfstatat(3, "intel-microcode-blacklist.conf", {st_mode=S_IFREG|0644, st_size=154, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist-rare-network.conf", {st_mode=S_IFREG|0644, st_size=583, ...}, 0) = 0
[pid 24610] newfstatat(3, "dkms.conf", {st_mode=S_IFREG|0644, st_size=127, ...}, 0) = 0
[pid 24610] newfstatat(3, "vmware-fuse.conf", {st_mode=S_IFREG|0644, st_size=49, ...}, 0) = 0
[pid 24610] getdents64(3, 0x56247e7cf450 /* 0 entries */, 32768) = 0
[pid 24610] close(3)                    = 0
[pid 24610] newfstatat(AT_FDCWD, "/run/modprobe.d", 0x7fff459ff4f0, 0) = -1 ENOENT (No such file or directory)
[pid 24610] newfstatat(AT_FDCWD, "/lib/modprobe.d", {st_mode=S_IFDIR|0755, st_size=4096, ...}, 0) = 0
[pid 24610] openat(AT_FDCWD, "/lib/modprobe.d", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFDIR|0755, st_size=4096, ...}, AT_EMPTY_PATH) = 0
[pid 24610] getdents64(3, 0x56247e7d78e0 /* 7 entries */, 32768) = 280
[pid 24610] newfstatat(3, "blacklist_linux_5.11.0-16-generic.conf", {st_mode=S_IFREG|0644, st_size=1543, ...}, 0) = 0
[pid 24610] newfstatat(3, "aliases.conf", {st_mode=S_IFREG|0644, st_size=655, ...}, 0) = 0
[pid 24610] newfstatat(3, "systemd.conf", {st_mode=S_IFREG|0644, st_size=773, ...}, 0) = 0
[pid 24610] newfstatat(3, "blacklist_linux_5.11.0-22-generic.conf", {st_mode=S_IFREG|0644, st_size=1543, ...}, 0) = 0
[pid 24610] newfstatat(3, "fbdev-blacklist.conf", {st_mode=S_IFREG|0644, st_size=390, ...}, 0) = 0
[pid 24610] getdents64(3, 0x56247e7d78e0 /* 0 entries */, 32768) = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modprobe.d/aliases.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=655, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# These are the standard aliases"..., 4096) = 655
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/alsa-base.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=2507, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# autoloader aliases\ninstall sou"..., 4096) = 2507
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/amd64-microcode-blacklist.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=154, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# The microcode module attempts "..., 4096) = 154
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/blacklist-ath_pci.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=325, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# For some Atheros 5K RF MACs, t"..., 4096) = 325
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/blacklist-firewire.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=210, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Select the legacy firewire sta"..., 4096) = 210
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/blacklist-framebuffer.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=677, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Framebuffer drivers are genera"..., 4096) = 677
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/blacklist-modem.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=156, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Uncomment these entries in ord"..., 4096) = 156
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/blacklist-oss.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=1059, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "blacklist ac97\nblacklist ac97_co"..., 4096) = 1059
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/blacklist-rare-network.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=583, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Many less commonly used networ"..., 4096) = 583
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/blacklist.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=1518, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# This file lists those modules "..., 4096) = 1518
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modprobe.d/blacklist_linux_5.11.0-16-generic.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=1543, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Kernel supplied blacklist for "..., 4096) = 1543
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modprobe.d/blacklist_linux_5.11.0-22-generic.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=1543, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Kernel supplied blacklist for "..., 4096) = 1543
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/dkms.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=127, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# modprobe information used for "..., 4096) = 127
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modprobe.d/fbdev-blacklist.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=390, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# This file blacklists most old-"..., 4096) = 390
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/intel-microcode-blacklist.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=154, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# The microcode module attempts "..., 4096) = 154
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/iwlwifi.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=347, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# /etc/modprobe.d/iwlwifi.conf\n#"..., 4096) = 347
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modules/5.11.0-22-generic/modules.softdep", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=1005, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Soft dependencies extracted fr"..., 4096) = 1005
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modprobe.d/systemd.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=773, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "#  SPDX-License-Identifier: LGPL"..., 4096) = 773
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/etc/modprobe.d/vmware-fuse.conf", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] fcntl(3, F_GETFL)           = 0x8000 (flags O_RDONLY|O_LARGEFILE)
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=49, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "# Added by VMware.\n\nalias char-m"..., 4096) = 49
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/proc/cmdline", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] read(3, "BOOT_IMAGE=/boot/vmlinuz-5.11.0-"..., 4095) = 119
[pid 24610] read(3, "", 3976)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modules/5.11.0-22-generic/modules.dep.bin", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=924543, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 924543, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7faeccff6000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modules/5.11.0-22-generic/modules.alias.bin", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=1437439, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 1437439, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7faecce97000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modules/5.11.0-22-generic/modules.symbols.bin", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=783991, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 783991, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7faeccdd7000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modules/5.11.0-22-generic/modules.builtin.alias.bin", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=0, ...}, AT_EMPTY_PATH) = 0
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modules/5.11.0-22-generic/modules.builtin.bin", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=12665, ...}, AT_EMPTY_PATH) = 0
[pid 24610] mmap(NULL, 12665, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7faecd605000
[pid 24610] close(3)                    = 0
[pid 24610] openat(AT_FDCWD, "/lib/modules/5.11.0-22-generic/modules.builtin.alias.bin", O_RDONLY|O_CLOEXEC) = 3
[pid 24610] newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=0, ...}, AT_EMPTY_PATH) = 0
[pid 24610] read(3, "", 4096)           = 0
[pid 24610] close(3)                    = 0
[pid 24610] write(2, "modprobe: FATAL: Module vmmon no"..., 84) = 84
[pid 24610] exit_group(1)               = ?
[pid 24610] +++ exited with 1 +++
<... wait4 resumed>[{WIFEXITED(s) && WEXITSTATUS(s) == 1}], 0, NULL) = 24610
rt_sigaction(SIGINT, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, {sa_handler=0x558f96bc1130, sa_mask=[], sa_flags=SA_RESTORER, sa_restorer=0x7f54e2734040}, 8) = 0
ioctl(2, TIOCGWINSZ, 0x7ffcf506f0b0)    = -1 ENOTTY (Inappropriate ioctl for device)
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=24610, si_uid=0, si_status=1, si_utime=0, si_stime=0} ---
wait4(-1, 0x7ffcf506e910, WNOHANG, NULL) = -1 ECHILD (No child processes)
rt_sigreturn({mask=[]})                 = 0
read(255, "\nexit 1\n", 3331)           = 8
rt_sigprocmask(SIG_BLOCK, [CHLD], [], 8) = 0
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
exit_group(1)                           = ?
+++ exited with 1 +++
````
