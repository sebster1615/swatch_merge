import cast_ons;
import bind_offs;

carr =  c1;
//cast on multiples of 4
width = 42;
height = 6;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{
        //row 1 and 2
        xfer Front_Needles[2:width:4] across;
        xfer Front_Needles[3:width:4] across;
        in reverse direction:{
            knit Loops;
        }
        in reverse direction:{
            knit Loops;
        }

        xfer Back_Needles[3:width:2] across;
        //row 3 and 4
        xfer Front_Needles[1:width:4] across;
        xfer Front_Needles[2:width:4] across;
        in reverse direction:{
            knit Loops;
        }
        in reverse direction:{
            knit Loops;
        }

        xfer Back_Needles[2:width:2] across;
        //row 5 and 6
        xfer Front_Needles[0:width:4] across;
        xfer Front_Needles[1:width:4] across;
        in reverse direction:{
            knit Loops;
        }
        in reverse direction:{
            knit Loops;
        }

        xfer Back_Needles[1:width:2] across;
        //row 7 and 8
        xfer Front_Needles[0:width:4] across;
        xfer Front_Needles[3:width:4] across;
        in reverse direction:{
            knit Loops;
        }
        in reverse direction:{
            knit Loops;
        }

        xfer Back_Needles[0:width:2] across;
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}