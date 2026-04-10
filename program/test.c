#pragma GCC push_options
#pragma GCC optimize ("O0")
void main();
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
void wait(int cycles);
void write(int addr,int data);
void read(int addr,int *data);
int transform(int data);
__attribute__((interrupt)) void handler()
{
    unsigned int data=0;
    read(KEYBOARD_ADDR,&data);
    write(DISPLAY_ADDR,data&0xff);
    data=transform(data&0xff);
    write(AUDIO_ADDR,data);
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
#define FRAME_POINTER 0x00000008
#define FRAME_ADDR 0x00000010 // 16*4 bytes for 16 frames, 0x10~0x4f
#define MAPPING_ADDR 0x00000100 // 64*4 bytes for 21 keys, 0x100~0x1ff
int transform(int data)
{
    unsigned int ret=0;
    if(data==0xf0)
        return 0x0d000721;
    read(MAPPING_ADDR+(data<<2),&ret);
    return ret;
}
void displayAC()
{
    unsigned int temp,low,high,p;
    read(FRAME_POINTER,&p);
    read(FRAME_ADDR+(p<<2),&temp);
    write(DISPLAY_ADDR,temp);
    low=temp&0xff;
    high=(temp>>8)&0xffffff;
    temp=(low<<24)|high;
    write(FRAME_ADDR+(p<<2),temp);
    write(FRAME_POINTER,(p+1)&0xf);
    wait(500000);
}
void initialize()
{
    // initialize the display frame
    unsigned int frame[16];
    frame[ 0]=0xFFFFFFFF;
    frame[ 1]=0xFFFFEFFF;
    frame[ 2]=0xFFFFCFFF;
    frame[ 3]=0xFFFFCEFF;
    frame[ 4]=0xFFFFCCFF;
    frame[ 5]=0xFFFF8CFF;
    frame[ 6]=0xFFFF88FF;
    frame[ 7]=0xFFFF88FE;
    frame[ 8]=0xFFFF88DE;
    frame[ 9]=0xFFFF88CE;
    frame[10]=0xFFFF88C6;
    frame[11]=0xFFFFFFFF;
    frame[12]=0xFFFF88C6;
    frame[13]=0xFFFFFFFF;
    frame[14]=0xFFFF88C6;
    frame[15]=0x7f7f7f7f;
    for(int i=0;i<16;++i)
        write(FRAME_ADDR+(i<<2),frame[i]);
    // initialize the mapping table from the key to the audio frequency
    // C3~B3
    write(MAPPING_ADDR+(0x1a<<2),764420);
    write(MAPPING_ADDR+(0x22<<2),681032);
    write(MAPPING_ADDR+(0x21<<2),606742);
    write(MAPPING_ADDR+(0x2a<<2),572696);
    write(MAPPING_ADDR+(0x32<<2),510210);
    write(MAPPING_ADDR+(0x31<<2),454545);
    write(MAPPING_ADDR+(0x3a<<2),404954);
    // C4~B4
    write(MAPPING_ADDR+(0x1c<<2),382210);
    write(MAPPING_ADDR+(0x1b<<2),340516);
    write(MAPPING_ADDR+(0x23<<2),303371);
    write(MAPPING_ADDR+(0x2b<<2),286348);
    write(MAPPING_ADDR+(0x34<<2),255105);
    write(MAPPING_ADDR+(0x33<<2),227273);
    write(MAPPING_ADDR+(0x3b<<2),202477);
    // C5~B5
    write(MAPPING_ADDR+(0x15<<2),191113);
    write(MAPPING_ADDR+(0x1d<<2),170258);
    write(MAPPING_ADDR+(0x24<<2),151686);
    write(MAPPING_ADDR+(0x2d<<2),143174);
    write(MAPPING_ADDR+(0x2c<<2),127553);
    write(MAPPING_ADDR+(0x35<<2),113636);
    write(MAPPING_ADDR+(0x3c<<2),101239);
    // initialize the display control variable
    write(FRAME_POINTER,0);
    // clear the display
    write(DISPLAY_ADDR,-1);
}
void main()
{
    unsigned int temp=0;
    initialize();
    begin:
    read(SWITCH_ADDR,&temp);
    write(LED_ADDR,temp<<2);
    while(((temp>>8)&0xff)==0xff)
    {
        displayAC();
        read(SWITCH_ADDR,&temp);
        write(LED_ADDR,temp<<2);
    }
    goto begin;
}
#pragma GCC pop_options
// --- the end of the file ---
/*
    8-segs display:
        +-0-+
        5   1
        +-6-+
        4   2
        +-3-+-7
*/