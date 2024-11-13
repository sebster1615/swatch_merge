import cast_ons;
import bind_offs;
import rackNeedles;

carr = c3;
width = 42;
height = 48;
cables_width = 2;
cables_height = 4;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);
    xfer Loops across;
    for i in range(0, 4):{
        in reverse direction:{
            knit Back_Loops;
        }
    }

    for i in range(0, int(height/cables_height)):{
        xfer Back_Needles[2:width:cables_width+2] 1 to Rightward to Front bed;
        xfer Back_Needles[3:width:cables_width+2] 1 to Leftward to Front bed;

        for j in range(0, cables_height):{
            in reverse direction:{
                knit Loops;
            }
        }

        xfer Front_Loops across;
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);

}
