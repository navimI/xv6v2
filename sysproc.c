#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int sys_fork(void)
{
  return fork();
}

int sys_exit(void)
{
  int status;
  if (argint(0, &status)<0)
    return -1;
  status <<= 8;
  exit(status);
  return 0; // not reached
}

int sys_wait(void)
{
  int *status;
  if(argptr(0, (void**)&status, sizeof(int))<0)
    return -1;//comprobar errores
  return wait(status);
}

int sys_kill(void)
{
  int pid;

  if (argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int sys_getpid(void)
{
  return myproc()->pid;
}

int sys_sbrk(void)
{
  int newAddr;
  int oldAddr;
  int n;

  if (argint(0, &n) < 0)
    return -1;

  oldAddr = myproc()->sz;
  newAddr = myproc()->sz+n;

  if (newAddr < KERNBASE)
  {
    if (n>=0){
      myproc()->sz = newAddr;
    }else if (growproc(n) < 0) return -1;
  }
  return oldAddr;
}

int sys_sleep(void)
{
  int n;
  uint ticks0;

  if (argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while (ticks - ticks0 < n)
  {
    if (myproc()->killed)
    {
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int sys_date(void)
{
  struct rtcdate* r;
  if(argptr(0, (void**)&r, sizeof(struct rtcdate))<0)
    return -1;


  cmostime(r);
  
  return 0;
}