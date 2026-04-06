#pragma GCC push_options
#pragma GCC optimize ("O0")
void write(int addr,int data);
void read(int addr,int *data);
void wait(int cycles);
// 
void main()
{
    unsigned int data=0;
    unsigned int temp=0;
    unsigned int sw_i=0xf0000000;
    unsigned int keyboard=0xa0000000;
    unsigned int led=0xf0000000;
    unsigned int disp=0xe0000000;
    unsigned int audio=0xb0000000;
    begin:
    read(keyboard,&temp);
    data=(temp)&0xff;
    write(led,data<<2);
    write(audio,data);
    temp=(data<<24)|(data<<16)|(data<<8)|data;
    write(disp,temp);
    goto begin;
    end:goto end;
}
void write(int addr,int data)
{
    int *p=(int *)addr;
    *p=data;
}
void read(int addr,int *data)
{
    int *p=(int *)addr;
    *data=*p;
}
__attribute__((noinline)) void wait(int cycles)
{
    int temp=0;
    while(cycles--)
    {
        temp++;
    }
}
#pragma GCC pop_options