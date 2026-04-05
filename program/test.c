#pragma GCC push_options
#pragma GCC optimize ("O0")
void write(int addr,int data);
void read(int addr,int *data);
int wait(int cycles);
void main()
{
    unsigned int data=0;
    unsigned int temp=0;
    unsigned int led=0xffffff00;
    unsigned int disp=0xe0000000;
    // unsigned int other=0xfffffe00;
    begin:
    read(led,&temp);
    data=(temp>>8)&0xff;
    write(disp,(data<<24)|(data<<16)|(data<<8)|data);
    write(disp+4,~((data<<24)|(data<<16)|(data<<8)|data));
    write(led,(data<<8)&0xff00);
    // write(other,data);
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
int wait(int cycles)
{
    int temp=0;
    for(int i=0;i<cycles;++i)
    {
        temp+=i;
        temp&=0xffffffff;
    }
    return temp;
}
#pragma GCC pop_options