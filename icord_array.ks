import cast_ons;
width = 18;
height = 20;

carr1 = c1;
carr2 = c2;
carr3 = c3;
carr4 = c4;

def icord(loopsFront, loopsBack, h):{
    for i in range(0, h):{
        in reverse direction:{
            knit loopsFront;
        }
        in reverse direction:{
            knit loopsBack;
        }
    }
}

with Carrier as carr1:{
    //cast_ons.alt_tuck_cast_on(width, knit_lines=10);
    //xfer Front_Needles[3:width:5] 2 to Leftward to Back bed;
    //xfer Front_Needles[4:width:5] 1 to Leftward to Back bed;

    //drop Front_Needles[3:width:5];
    //drop Front_Needles[4:width:5];
    cast_ons.alt_tuck_cast_on(width, is_front=True);
    cast_ons.alt_tuck_cast_on(width, is_front=False);
    for r in range(0, height):{
		in reverse direction:{
			knit Front_Loops;
		}
		in reverse direction:{
			knit Back_Loops;
		}
	}
    xfer Front_Needles[3:width:5] 1 to Leftward to Back bed;
    xfer Front_Needles[4:width:5] 1 to Rightward to Back bed;
    xfer Back_Needles[3:width:5] 1 to Leftward to Front bed;
    xfer Back_Needles[4:width:5] 1 to Rightward to Front bed;

//	drop Front_Needles[3:width:5];
//    drop Front_Needles[4:width:5];
//    drop Back_Needles[3:width:5];
//    drop Back_Needles[4:width:5];
//	drop Front_Needles[3:5];
//	drop Back_Needles[3:5];
//	drop Front_Needles[8:10];
//	drop Back_Needles[8:10];
//	drop Front_Needles[3:5];
//	drop Back_Needles[13:16];

//    in reverse direction:{
//        tuck Back_Needles[0:3];
//        tuck Back_Needles[5:8];
//        tuck Back_Needles[10:13];
//        tuck Back_Needles[15:18];
//        //tuck Back_Needles[22:25];
//    }
    in reverse direction:{
        knit Front_Loops;
    }
    in reverse direction:{
        knit Back_Loops;
//        knit Back_Needles[0:3];
//        knit Back_Needles[5:8];
//        knit Back_Needles[10:13];
//        knit Back_Needles[15:18];
        //knit Back_Needles[22:25];
    }
    //releasehook;
}
for i in range (0, 60):{
with Carrier as carr1:{
    icord(Front_Needles[0:3], Back_Needles[0:3], 1);
    releasehook;
}

with Carrier as carr2:{
    icord(Front_Needles[5:8], Back_Needles[5:8], 1);
    releasehook;
}
with Carrier as carr3:{
    icord(Front_Needles[10:13], Back_Needles[10:13], 1);
    releasehook;
}

with Carrier as carr5:{
    icord(Front_Needles[15:18], Back_Needles[15:18], 1);
    releasehook;
}
}






