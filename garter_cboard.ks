import cast_ons;
import bind_offs;

carr = c2;
//cast on even num
width = 40;
height = 5;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{
        xfer Front_Needles[0:width:10] across;
        xfer Front_Needles[1:width:10] across;
        xfer Front_Needles[2:width:10] across;
        xfer Front_Needles[3:width:10] across;
        xfer Front_Needles[4:width:10] across;
        in reverse direction:{
            knit Loops;
        }

        for k in range(0, 3):{
            xfer Back_Loops across;
            in reverse direction:{
                knit Front_Loops;
            }

            xfer Front_Needles[0:width:10] across;
            xfer Front_Needles[1:width:10] across;
            xfer Front_Needles[2:width:10] across;
            xfer Front_Needles[3:width:10] across;
            xfer Front_Needles[4:width:10] across;
            in reverse direction:{
                knit Loops;
            }
        }

        xfer Back_Loops across;

        xfer Front_Needles[5:width:10] across;
        xfer Front_Needles[6:width:10] across;
        xfer Front_Needles[7:width:10] across;
        xfer Front_Needles[8:width:10] across;
        xfer Front_Needles[9:width:10] across;
        in reverse direction:{
                knit Loops;
        }

        for k in range(0, 3):{
            xfer Back_Loops across;
            in reverse direction:{
                knit Front_Loops;
            }

            xfer Front_Needles[5:width:10] across;
            xfer Front_Needles[6:width:10] across;
            xfer Front_Needles[7:width:10] across;
            xfer Front_Needles[8:width:10] across;
            xfer Front_Needles[9:width:10] across;
            in reverse direction:{
                knit Loops;
            }
        }
        xfer Back_Loops across;
    }
    print("FLAG begin bind off");
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}