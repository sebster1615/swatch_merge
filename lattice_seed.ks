import cast_ons;
import bind_offs;

//cast on multiple of 14 + 2
carr = c2;
width = 44;
height = 4;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{
        //row 1 and 2
        xfer Front_Loops across;
        xfer Back_Needles[7:width:14] across;
        xfer Back_Needles[8:width:14] across;
        in reverse direction:{
            knit Loops;
        }
        in reverse direction:{
            knit Loops;
        }

        //row 3
        xfer Back_Loops across;
        in reverse direction:{
            knit Front_Loops;
        }

        //row 4-9
        for j in range(0,3):{
            xfer Front_Needles[2:width:14] across;
            xfer Front_Needles[4:width:14] across;
            xfer Front_Needles[6:width:14] across;
            xfer Front_Needles[9:width:14] across;
            xfer Front_Needles[11:width:14] across;
            xfer Front_Needles[13:width:14] across;

            in reverse direction:{
                knit Loops;
            }
            xfer Back_Loops across;

            xfer Front_Needles[3:width:14] across;
            xfer Front_Needles[5:width:14] across;
            xfer Front_Needles[10:width:14] across;
            xfer Front_Needles[12:width:14] across;

            in reverse direction:{
                knit Loops;
            }
            xfer Back_Loops across;
        }

        //row 10 and 11
        xfer Front_Loops across;
        xfer Back_Needles[0:width:14] across;
        xfer Back_Needles[1:width:14] across;
        //xfer Back_Needles[14:width:14] across;
        //xfer Back_Needles[15:width:14] across;
        in reverse direction:{
            knit Loops;
        }
        in reverse direction:{
            knit Loops;
        }

        //row 12
        xfer Back_Loops across;
        in reverse direction:{
            knit Front_Loops;
        }

        //row 13-18
        for j in range(0,3):{
            xfer Front_Needles[2:width:14] across;
            xfer Front_Needles[4:width:14] across;
            xfer Front_Needles[6:width:14] across;
            xfer Front_Needles[9:width:14] across;
            xfer Front_Needles[11:width:14] across;
            xfer Front_Needles[13:width:14] across;

            in reverse direction:{
                knit Loops;
            }
            xfer Back_Loops across;

            xfer Front_Needles[3:width:14] across;
            xfer Front_Needles[5:width:14] across;
            xfer Front_Needles[10:width:14] across;
            xfer Front_Needles[12:width:14] across;

            in reverse direction:{
                knit Loops;
            }
            xfer Back_Loops across;
        }
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}