#pragma GCC push_options
#pragma GCC optimize ("O0")
void main();
void wait(int cycles);
void write(int addr,int data);
void read(int addr,int *data);
int transform(int data);
void Entry()
{
    asm("li\tsp,1024");
    main();
    DeadLoop:goto DeadLoop;
}
#define SWITCH_ADDR 0xf0000000
#define LED_ADDR 0xf0000000
#define DISPLAY_ADDR 0xe0000000
#define KEYBOARD_ADDR 0xa0000000
#define AUDIO_ADDR 0xb0000000
// --- libraries ---
__attribute__((interrupt)) void handler()
{
    unsigned int data=0;
    read(KEYBOARD_ADDR,&data);
    data&=0xff;
    write(DISPLAY_ADDR,data);
    write(AUDIO_ADDR,transform(data));
}
__attribute__((noinline))void wait(int cycles){while(cycles--);}
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
// --- the driver of PIANO ---
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
        // UNUSED
        case 0xf0:return -1;
    }
    return 0;
}
#define FRAME_ADDR 0x00000100
void displayAC(int flag)
{
    unsigned int frame[16],low,high;
    for(int i=0;i<16;++i)
        read(FRAME_ADDR+(i<<2),&frame[i]);
    for(int i=0;i<16;++i)
    {
        write(DISPLAY_ADDR,flag?frame[i]:~frame[i]);
        wait(500000);
    }
    for(int i=0;i<16;++i)
    {
        low=frame[i]&0xff;
        high=(frame[i]>>8)&0xffffff;
        frame[i]=(low<<24)|high;
        write(FRAME_ADDR+(i<<2),frame[i]);
    }
}
/*
+0+
5 1
+6+
4 2
+3+7
*/
void initialize()
{
    unsigned int temp[16];
    temp[ 0]=0xFFFFFFFF;
    temp[ 1]=0xFFFFEFFF;
    temp[ 2]=0xFFFFCFFF;
    temp[ 3]=0xFFFFCEFF;
    temp[ 4]=0xFFFFCCFF;
    temp[ 5]=0xFFFF8CFF;
    temp[ 6]=0xFFFF88FF;
    temp[ 7]=0xFFFF88FE;
    temp[ 8]=0xFFFF88DE;
    temp[ 9]=0xFFFF88CE;
    temp[10]=0xFFFF88C6;
    temp[11]=0xFFFFFFFF;
    temp[12]=0xFFFF88C6;
    temp[13]=0xFFFFFFFF;
    temp[14]=0xFFFF88C6;
    temp[15]=0x7f7f7f7f;
    for(int i=0;i<16;++i)
        write(FRAME_ADDR+(i<<2),temp[i]);
    write(DISPLAY_ADDR,-1);
}
void main()
{
    unsigned int temp=0;
    initialize();
    begin:
    read(SWITCH_ADDR,&temp);
    write(LED_ADDR,temp<<2);
    while((temp>>8&0xff)==0xff)
    {
        read(SWITCH_ADDR,&temp);
        write(LED_ADDR,temp<<2);
        displayAC((temp>>1)&1);
    }
    goto begin;
}
#pragma GCC pop_options