#include<bits/stdc++.h>
using namespace std;

//  21c:	00a50513       addi	x10,x10,10   # x10=0x66cd09
//  220:	00351793       slli	x15,x10,0x3  # x15=0x3366848
//  224:	00a7e7b3       or	x15,x15,x10  # x15=0x376ed49
//  228:	fb9bd737       lui	x14,0xfb9bd 
//  22c:	e9770713       addi	x14,x14,-361 # x14=0xfb9bce97
//  230:	00e787b3       add	x15,x15,x14  # x15=0xff12bbe0
//  234:	4057d713       srai	x14,x15,0x5  # x14=0xfff895df
//  238:	40e787b3       sub	x15,x15,x14  # x15=0xff1a2601
//  23c:	0057d513       srli	x10,x15,0x5  # x10=0x7f8d130
//  240:	00f50533       add	x10,x10,x15  # x10=0x0712f731

// arithmetic
void Part1()
{
    int x10,x14,x15;
    x10=0x66ccff;
    x10+=10;
    x15=x10<<3;
    x15|=x10;
    x14=0xfb9bce97;
    x15+=x14;
    x14=x15>>5;
    cerr<<hex<<"--- "<<x14<<" ---\n";
    x15-=x14;
    x10=(unsigned)x15>>5;
    x10+=x15;
    cout<<"0x"<<hex<<x10<<"\n0x712f731\n";
}

//  2e4:	e0000737      lui	x14,0xe0000 #
//  2e8:	002227b7      lui	x15,0x222   #
//  2ec:	20078793      addi	x15,x15,512 # 0x222200
//  2f0:	00f72023      sw	x15,0(x14) # 0xe0000000
//  2f4:	00400713      addi	x14,x0,4    #
//  2f8:	00072783      lw	x15,0(x14)  #
//  2fc:	00479793      slli	x15,x15,0x4 #
//  300:	0027e793      ori	x15,x15,2   #
//  304:	00f72023      sw	x15,0(x14)  #
//  308:	00800493      addi	x9,x0,8     #
//  30c:	06100793      addi	x15,x0,97   #
//  310:	00f48023      sb	x15,0(x9)   #
//  314:	02900793      addi	x15,x0,41   #
//  318:	00f004a3      sb	x15,9(x0) # 0x9
//  31c:	07800793      addi	x15,x0,120  #
//  320:	00f00523      sb	x15,10(x0) # 0xa
//  324:	05f00793      addi	x15,x0,95   #
//  328:	00f005a3      sb	x15,11(x0) # 0xb
//  32c:	00800513      addi	x10,x0,8    #

//  294:	00051703      lh	x14,0(x10)      #
//  298:	00255783      lhu	x15,2(x10)      #
//  29c:	00f747b3      xor	x15,x14,x15     #
//  2a0:	40175713      srai	x14,x14,0x1     #
//  2a4:	00e7c7b3      xor	x15,x15,x14     #
//  2a8:	00f51123      sh	x15,2(x10)      #
//  2ac:	00052783      lw	x15,0(x10)      #
//  2b0:	0001c737      lui	x14,0x1c        #
//  2b4:	f5270713      addi	x14,x14,-174 # 0x1bf52
//  2b8:	00e7c7b3      xor	x15,x15,x14     #
//  2bc:	00f52023      sw	x15,0(x10)      #
//  2c0:	4107d713      srai	x14,x15,0x10    #
//  2c4:	0107d793      srli	x15,x15,0x10    #
//  2c8:	0ff7f793      andi	x15,x15,255     #
//  2cc:	40f707b3      sub	x15,x14,x15     #
//  2d0:	00f52223      sw	x15,4(x10)      #

// memory
void Part2()
{

}

signed main()
{
    Part1();
    return 0;
}