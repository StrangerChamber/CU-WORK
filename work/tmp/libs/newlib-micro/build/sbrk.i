# 1 "/tools/toolchain/newlib-micro/runtime/sbrk.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 325 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/project/cu_riscv32i_cycle_accurate/work/cu_riscv32i_cycle_accurate_options.hcodal" 1
# 2 "<built-in>" 2
# 1 "/tools/toolchain/newlib-micro/runtime/sbrk.c" 2
# 15 "/tools/toolchain/newlib-micro/runtime/sbrk.c"
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/errno.h" 1 3




typedef int error_t;




# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/errno.h" 1 3
# 11 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/errno.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 1 3
# 13 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/_ansi.h" 1 3
# 18 "/tools/toolchain/newlib-micro/newlib/libc/include/_ansi.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/newlib.h" 1 3
# 19 "/tools/toolchain/newlib-micro/newlib/libc/include/_ansi.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/config.h" 1 3



# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/ieeefp.h" 1 3
# 5 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/config.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/features.h" 1 3
# 28 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/features.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/_newlib_version.h" 1 3
# 29 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/features.h" 2 3
# 6 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/config.h" 2 3
# 20 "/tools/toolchain/newlib-micro/newlib/libc/include/_ansi.h" 2 3
# 14 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 2 3
# 1 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 35 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef int ptrdiff_t;
# 46 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef unsigned int size_t;
# 74 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef int wchar_t;
# 102 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
# 1 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/__stddef_max_align_t.h" 1 3
# 19 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 103 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 2 3
# 15 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 1 3
# 24 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 3
# 1 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 116 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef unsigned int wint_t;
# 25 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/newlib.h" 1 3
# 26 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 2 3

# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_types.h" 1 3






# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 1 3
# 41 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef short __int16_t;

typedef unsigned short __uint16_t;
# 77 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef int __int32_t;

typedef unsigned int __uint32_t;
# 103 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef short __int_least16_t;

typedef unsigned short __uint_least16_t;
# 182 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef int __int_least32_t;

typedef unsigned int __uint_least32_t;
# 200 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_types.h" 2 3
# 28 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/lock.h" 1 3





# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/newlib.h" 1 3
# 7 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/lock.h" 2 3




typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/errno.h" 2 3



extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "/tools/toolchain/newlib-micro/newlib/libc/include/errno.h" 2 3
# 16 "/tools/toolchain/newlib-micro/runtime/sbrk.c" 2
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/unistd.h" 1 3



# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 1 3
# 11 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/cdefs.h" 1 3
# 47 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/cdefs.h" 3
# 1 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 48 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/cdefs.h" 2 3
# 12 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 1 3
# 28 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;







# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_stdint.h" 1 3
# 20 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 2 3


# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/endian.h" 1 3





# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/_endian.h" 1 3
# 7 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/endian.h" 2 3
# 50 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 1 3
# 14 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_sigset.h" 1 3
# 41 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_timeval.h" 1 3
# 37 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 2 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/timespec.h" 1 3
# 38 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/timespec.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_timespec.h" 1 3
# 47 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/timespec.h" 2 3
# 58 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 76 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/select.h" 3
int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout);


int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set);
# 51 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 3
typedef __int64_t sbintime_t;
# 232 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 3
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/machine/types.h" 1 3
# 233 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/types.h" 2 3
# 13 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 2 3

# 1 "/home/project/cu_riscv32i_cycle_accurate/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 15 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 2 3

extern char **environ;

void _exit (int __status) __attribute__ ((__noreturn__));

int access (const char *__path, int __amode);
unsigned alarm (unsigned __secs);
int chdir (const char *__path);
int chmod (const char *__path, mode_t __mode);

int chown (const char *__path, uid_t __owner, gid_t __group);


int chroot (const char *__path);

int close (int __fildes);

size_t confstr (int __name, char *__buf, size_t __len);
# 44 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 3
int daemon (int nochdir, int noclose);

int dup (int __fildes);
int dup2 (int __fildes, int __fildes2);
# 56 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 3
void endusershell (void);




int execl (const char *__path, const char *, ...);
int execle (const char *__path, const char *, ...);
int execlp (const char *__file, const char *, ...);

int execlpe (const char *__file, const char *, ...);

int execv (const char *__path, char * const __argv[]);
int execve (const char *__path, char * const __argv[], char * const __envp[]);
int execvp (const char *__file, char * const __argv[]);




int faccessat (int __dirfd, const char *__path, int __mode, int __flags);


int fchdir (int __fildes);


int fchmod (int __fildes, mode_t __mode);



int fchown (int __fildes, uid_t __owner, gid_t __group);



int fchownat (int __dirfd, const char *__path, uid_t __owner, gid_t __group, int __flags);


int fexecve (int __fd, char * const __argv[], char * const __envp[]);

pid_t fork (void);
long fpathconf (int __fd, int __name);
int fsync (int __fd);

int fdatasync (int __fd);




char * getcwd (char *__buf, size_t __size);

int getdomainname (char *__name, size_t __len);


int getentropy (void *, size_t);


gid_t getegid (void);
uid_t geteuid (void);
gid_t getgid (void);

int getgroups (int __gidsetsize, gid_t __grouplist[]);

long gethostid (void);

char * getlogin (void);




char * getpass (const char *__prompt);
int getpagesize (void);


int getpeereid (int, uid_t *, gid_t *);


pid_t getpgid (pid_t);

pid_t getpgrp (void);
pid_t getpid (void);
pid_t getppid (void);

pid_t getsid (pid_t);


uid_t getuid (void);


char * getusershell (void);


char * getwd (char *__buf);


int iruserok (unsigned long raddr, int superuser, const char *ruser, const char *luser);

int isatty (int __fildes);

int issetugid (void);



int lchown (const char *__path, uid_t __owner, gid_t __group);


int link (const char *__path1, const char *__path2);

int linkat (int __dirfd1, const char *__path1, int __dirfd2, const char *__path2, int __flags);


int nice (int __nice_value);


off_t lseek (int __fildes, off_t __offset, int __whence);






int lockf (int __fd, int __cmd, off_t __len);

long pathconf (const char *__path, int __name);
int pause (void);

int pthread_atfork (void (*)(void), void (*)(void), void (*)(void));

int pipe (int __fildes[2]);




ssize_t pread (int __fd, void *__buf, size_t __nbytes, off_t __offset);
ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, off_t __offset);

int read (int __fd, void *__buf, size_t __nbyte);

int rresvport (int *__alport);
int revoke (char *__path);

int rmdir (const char *__path);

int ruserok (const char *rhost, int superuser, const char *ruser, const char *luser);


void * sbrk (ptrdiff_t __incr);



int setegid (gid_t __gid);
int seteuid (uid_t __uid);

int setgid (gid_t __gid);


int setgroups (int ngroups, const gid_t *grouplist);


int sethostname (const char *, size_t);

int setpgid (pid_t __pid, pid_t __pgid);

int setpgrp (void);


int setregid (gid_t __rgid, gid_t __egid);
int setreuid (uid_t __ruid, uid_t __euid);

pid_t setsid (void);

int setuid (uid_t __uid);


void setusershell (void);

unsigned sleep (unsigned int __seconds);



long sysconf (int __name);
pid_t tcgetpgrp (int __fildes);
int tcsetpgrp (int __fildes, pid_t __pgrp_id);
char * ttyname (int __fildes);
int ttyname_r (int, char *, size_t);
int unlink (const char *__path);

int usleep (useconds_t __useconds);


int vhangup (void);

int write (int __fd, const void *__buf, size_t __nbyte);






extern char *optarg;
extern int optind, opterr, optopt;
int getopt(int, char * const [], const char *);
extern int optreset;



pid_t vfork (void);
# 283 "/tools/toolchain/newlib-micro/newlib/libc/include/sys/unistd.h" 3
int ftruncate (int __fd, off_t __length);


int truncate (const char *, off_t __length);




int getdtablesize (void);


useconds_t ualarm (useconds_t __useconds, useconds_t __interval);





 int gethostname (char *__name, size_t __len);




int setdtablesize (int);



void sync (void);



ssize_t readlink (const char *restrict __path,
                          char *restrict __buf, size_t __buflen);
int symlink (const char *__name1, const char *__name2);


ssize_t readlinkat (int __dirfd1, const char *restrict __path,
                            char *restrict __buf, size_t __buflen);
int symlinkat (const char *, int, const char *);
int unlinkat (int, const char *, int);
# 5 "/tools/toolchain/newlib-micro/newlib/libc/include/unistd.h" 2 3
# 17 "/tools/toolchain/newlib-micro/runtime/sbrk.c" 2
# 1 "/tools/toolchain/newlib-micro/newlib/libc/include/glue.h" 1 3
# 26 "/tools/toolchain/newlib-micro/newlib/libc/include/glue.h" 3
extern char _end[];
# 18 "/tools/toolchain/newlib-micro/runtime/sbrk.c" 2

extern char _heap[], _heap_end[];
static char *heap_ptr;
# 29 "/tools/toolchain/newlib-micro/runtime/sbrk.c"
void *sbrk(intptr_t nbytes)
{
  char *base;

  if (!heap_ptr)
    heap_ptr = (char *) &_heap;

  if ((heap_ptr + nbytes) <= _heap_end) {
    base = heap_ptr;
    heap_ptr += nbytes;
  } else {
    (*__errno()) = 12;

    write(2, "Warning: Codasip Newlib sbrk: could not allocate memory on heap, you can increase heap size with _HEAP_SIZE=size linker argument.\n", sizeof("Warning: Codasip Newlib sbrk: could not allocate memory on heap, you can increase heap size with _HEAP_SIZE=size linker argument.\n"));
    base = (char *) -1;
  }

  return base;
}
