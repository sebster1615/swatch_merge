import cast_ons;
import bind_offs;

carr = c1;
//cast on even num
width = 42;
height = 16;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{
        //row #1
        xfer Front_Needles[1:width-1:2] 1 to Rightward to Back bed;
        xfer Back_Loops across;
        in reverse direction:{
            knit Front_Needles[0:width:2];
            tuck Front_Needles[1:width:2];
            knit Front_Needles[width-1];
        }
        //row #2
        in reverse direction:{
            knit Front_Loops;
        }

        //row #3
        xfer Front_Needles[2:width-1:2] 1 to Leftward to Back bed;
        xfer Back_Loops across;
        in reverse direction:{
            knit Front_Needles[0];
            knit Front_Needles[1:width:2];
            tuck Front_Needles[2:width:2];
        }

        //row #4
        in reverse direction:{
            knit Front_Loops;
        }
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}