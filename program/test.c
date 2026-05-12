#pragma GCC push_options
#pragma GCC optimize ("O0")
void main();
void Entry()
{
    asm("li\tsp,1600");
    main();
    DeadLoop:goto DeadLoop;
}
// input devices
#define SWITCH_ADDR     0xf0000000
#define KEYBOARD_ADDR   0xf4000000
#define COUNTER_ADDR    0xf8000000
// output devices
#define DISPLAY_ADDR    0xe0000000
#define AUDIO_ADDR      0xe4000000
#define VOLUME_ADDR     0xe5000000
#define COUNTER_CTRL    0xe8000000
#define LED_ADDR        0xec000000
// SD card registers at 0xe9000000
#define SD_STATUS      0xe9000000
#define SD_BLK_ADDR    0xe9000004
#define SD_DATA_ADDR   0xe9000008
#define SD_WORD_ADDR   0xe900000C
#define SD_BLOCK_SIZE  128
// memory
#define FRAME_POINTER 0x60
#define VOLUME_RAM 0x70
#define F0_FLAG 0x80
#define FRAME_ADDR 0x100
#define MAPPING_ADDR 0x200
// flags for main loop
#define FLAG_NONE      0
#define FLAG_SD_TEST   1
volatile int sd_flag;
// --- libraries ---
void keyboard();
void button();
void counter();
__attribute__((interrupt)) void keyboard_handler(){return keyboard();}
__attribute__((interrupt)) void button_handler(){return button();}
__attribute__((interrupt)) void counter_handler(){return counter();}
__attribute__((noinline))void wait(int cycles){asm volatile("1:addi %0,%0,-1;bnez %0,1b":"+r"(cycles));}
void read(int addr,int *data);
void write(int addr,int data);
int transform(int data);
void keyboard()
{
    unsigned int data,temp,flag=0;
    read(KEYBOARD_ADDR,&data);
    read(VOLUME_RAM,&temp);
    read(F0_FLAG,&flag);
    data=data&0xff;
    if(data==0xf0)
        return write(F0_FLAG,1);
    if(flag==1)
        return write(F0_FLAG,0);
    if(data==0x5a) // Enter: trigger SD test in main loop
    {
        sd_flag=FLAG_SD_TEST;
        write(DISPLAY_ADDR,0x8B5179); // "buSY"
    }
    else if(data==0x76) // Esc: clear display
        write(DISPLAY_ADDR,0);
    else if(data==0x0d)
        write(DISPLAY_ADDR,temp);
    else if(data==0x4e) // volume down
    {
        if(temp>1)
            temp=(temp-1)&0x1f;
        write(VOLUME_RAM,temp);
        write(VOLUME_ADDR,temp);
        write(DISPLAY_ADDR,temp);
    }
    else if(data==0x55) // volume up
    {
        if(temp<16)
            temp=(temp+1)&0x1f;
        write(VOLUME_RAM,temp);
        write(VOLUME_ADDR,temp);
        write(DISPLAY_ADDR,temp);
    }
    else // note key
    {
        temp=0;
        if(data<0x40)
        {
            temp=transform(data);
            write(AUDIO_ADDR,temp);
        }
        write(DISPLAY_ADDR,(temp<<12)|data);
    }
}
void read(int addr,int *data)
{
    int *p=(int *)addr;
    *data=*p;
}
void write(int addr,int data)
{
    int *p=(int *)addr;
    *p=data;
}
void button()
{
    write(DISPLAY_ADDR,0x19260817);
}
void counter()
{
    unsigned int data;
    read(COUNTER_ADDR,&data);
    write(LED_ADDR,data<<2);
}
// application functions
int transform(int data)
{
    unsigned int ret=0;
    if(data>=0x40)
        return 0x00000000;
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
    wait(1000000);
}
void sd_test()
{
    int i,val,errors,timeout;
    write(DISPLAY_ADDR,0x8B5179); // "buSY"
    // fill buffer with test pattern
    for(i=0;i<SD_BLOCK_SIZE;i++)
    {
        write(SD_WORD_ADDR,i);
        write(SD_DATA_ADDR,0xDEAD0000+i);
    }
    // write buffer to SD block 0
    write(SD_BLK_ADDR,0);
    write(SD_STATUS,3);
    timeout=50000000;
    do{read(SD_STATUS,&val);timeout--;}while((val&1)&&timeout>0);
    if(!timeout){write(DISPLAY_ADDR,0x0d00E401);return;}
    wait(100000);
    // read SD block 0 back to buffer
    write(SD_BLK_ADDR,0);
    write(SD_STATUS,1);
    timeout=50000000;
    do{read(SD_STATUS,&val);timeout--;}while((val&1)&&timeout>0);
    if(!timeout){write(DISPLAY_ADDR,0x0d00E402);return;}
    // diagnostic: read and display first word
    wait(5000000);
    // verify
    errors=0;
    for(i=0;i<SD_BLOCK_SIZE;i++)
    {
        write(SD_WORD_ADDR,i);
        read(SD_DATA_ADDR,&val);
        if(val!=(0xDEAD0000+i))
        {
            errors++;
            write(DISPLAY_ADDR,val);
            wait(1000000);
        }
    }
    if(errors==0)
    {
        write(DISPLAY_ADDR,0x9A55); // "PASS"
        wait(3000000);
    }
    else
        write(DISPLAY_ADDR,(errors<<16)|0xFA11); // "FAIL"+count
}
void initialize()
{
    unsigned int frame[16];
    frame[ 0]=0xFFFFFFFF; frame[ 1]=0xFFFFEFFF;
    frame[ 2]=0xFFFFCFFF; frame[ 3]=0xFFFFCEFF;
    frame[ 4]=0xFFFFCCFF; frame[ 5]=0xFFFF8CFF;
    frame[ 6]=0xFFFF88FF; frame[ 7]=0xFFFF88FE;
    frame[ 8]=0xFFFF88DE; frame[ 9]=0xFFFF88CE;
    frame[10]=0xFFFF88C6; frame[11]=0xFFFFFFFF;
    frame[12]=0xFFFF88C6; frame[13]=0xFFFFFFFF;
    frame[14]=0xFFFF88C6; frame[15]=0x7f7f7f7f;
    for(int i=0;i<16;++i)
        write(FRAME_ADDR+(i<<2),frame[i]);
    for(int i=0;i<64;++i)
        write(MAPPING_ADDR+(i<<2),0);
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
    write(DISPLAY_ADDR,0x19260817);
    // initialize the audio frequency and volume
    write(VOLUME_RAM,16);
    write(VOLUME_ADDR,16);
    // enable the interrupt
    write(F0_FLAG,0);
    sd_flag=FLAG_NONE;
}
void main()
{
    unsigned int temp=0;
    initialize();
    loop:
    // handle SD test request from keyboard
    if(sd_flag==FLAG_SD_TEST)
    {
        sd_test();
        sd_flag=FLAG_NONE;
    }
    read(SWITCH_ADDR,&temp);
    write(LED_ADDR,temp<<2);
    while(((temp>>8)&0xff)==0xff)
    {
        if(sd_flag==FLAG_SD_TEST)
        {
            sd_test();
            sd_flag=FLAG_NONE;
        }
        displayAC();
        read(SWITCH_ADDR,&temp);
        write(LED_ADDR,temp<<2);
    }
    goto loop;
    asm("jal x0,-4");
}
#pragma GCC pop_options
