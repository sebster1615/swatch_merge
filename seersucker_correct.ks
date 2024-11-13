import cast_ons;
import bind_offs;

carr = c2;
//cast on mult 4 + 1
width = 49;
height = 6;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{
        //row #1
        xfer Front_Needles[2:width-1:4] across;
        in reverse direction:{
            knit Loops;
        }
//        //row #2
        in reverse direction:{
            knit Loops;
        }
        xfer Back_Loops across;

        //row #3
        xfer Front_Needles[1:width-1:2] across;
        in reverse direction:{
            knit Loops;
        }
//
//        //row #4
        in reverse direction:{
            knit Loops;
        }
        xfer Back_Loops across;

        //row #5
        xfer Front_Needles[0:width-1:4] across;
        xfer Front_Needles[width-1] across;
        in reverse direction:{
            knit Loops;
        }
//
//        //row #6
        in reverse direction:{
            knit Loops;
        }
        xfer Back_Loops across;

        //row #7
        xfer Front_Needles[1:width-1:2] across;
        in reverse direction:{
            knit Loops;
        }
//
//        //row #8
        in reverse direction:{
            knit Loops;
        }
        xfer Back_Loops across;
    }

    xfer Front_Needles[2:width-1:4] across;
    in reverse direction:{
        knit Loops;
    }
    in reverse direction:{
        knit Loops;
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}