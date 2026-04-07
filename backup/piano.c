#pragma GCC push_options
#pragma GCC optimize ("O0")
void write(int addr,int data);
void read(int addr,int *data);
void wait(int cycles);
int transform(int data);
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
    data=transform(temp&0xff);
    write(audio,data);
    write(led,temp<<2);
    write(disp,(temp<<24)|(temp<<16)|(temp<<8)|temp);
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
    int temp;
    while(cycles--)
        /* loop for cycles */++temp;
}
int transform(int data)
{
    switch(data)
    {
        // C3~B3
        case 0x1a:return 764420;
        case 0x22:return 681032;
        case 0x21:return 606742;
        case 0x2a:return 572696;
        case 0x32:return 510210;
        case 0x31:return 454545;
        case 0x3a:return 404954;
        // C4~B4
        case 0x1c:return 382210;
        case 0x1b:return 340516;
        case 0x23:return 303371;
        case 0x2b:return 286348;
        case 0x34:return 255105;
        case 0x33:return 227273;
        case 0x3b:return 202477;
        // C5~B5
        case 0x15:return 191113;
        case 0x1d:return 170258;
        case 0x24:return 151686;
        case 0x2d:return 143174;
        case 0x2c:return 127553;
        case 0x35:return 113636;
        case 0x3c:return 101239;
        case 0xf0:return -1;
    }
    return 0;
}
#pragma GCC pop_options