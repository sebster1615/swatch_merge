import cast_ons;
import bind_offs;

carr = c1;
width = 60;
height = 6;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{
        //row #1
        xfer Front_Needles[0:width:6] across;
        xfer Front_Needles[1:width:6] across;
        in reverse direction:{
            knit Loops;
        }

        //row #2
        in reverse direction:{
            knit Loops;
        }

        //row #3
        in reverse direction:{
            knit Loops;
        }

        //row #4
        in reverse direction:{
            knit Loops;
        }
        xfer Front_Loops across;

        //row #5
        xfer Back_Needles[8:width:12] across;
        xfer Back_Needles[9:width:12] across;
        xfer Back_Needles[10:width:12] across;
        xfer Back_Needles[11:width:12] across;
        in reverse direction:{
            knit Loops;
        }

        //row #6
        in reverse direction:{
            knit Loops;
        }
        xfer Back_Loops across;

        //row #7
        xfer Front_Needles[0:width:6] across;
        xfer Front_Needles[1:width:6] across;
        in reverse direction:{
            knit Loops;
        }
//        xfer Back_Loops across;

        //row #8
        in reverse direction:{
            knit Loops;
        }
//        xfer Back_Loops across;

        //row #9
        in reverse direction:{
            knit Loops;
        }

        //row #10
        in reverse direction:{
            knit Loops;
        }
        xfer Front_Loops across;

        //row #11
        xfer Back_Needles[2:width:12] across;
        xfer Back_Needles[3:width:12] across;
        xfer Back_Needles[4:width:12] across;
        xfer Back_Needles[5:width:12] across;
        in reverse direction:{
            knit Loops;
        }

        //row #12
        in reverse direction:{
            knit Loops;
        }
        xfer Back_Loops across;
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}