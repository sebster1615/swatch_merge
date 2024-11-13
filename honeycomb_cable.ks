import cast_ons;
import bind_offs;

width = 32;
height = 5;
carr = c3;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{

        for j in range(0,2):{
            in reverse direction:{
                knit Loops;
            }
        }
        xfer Front_Loops across;
        xfer Back_Needles[0:width:4] 1 to Rightward to Front bed;
        //xfer Back_Loops across;
        xfer Back_Needles[1:width:4] 1 to Leftward to Front bed;
        //xfer Back_Loops across;
        xfer Back_Needles[3:width:4] 1 to Leftward to Front bed;
        //xfer Back_Loops across;
        xfer Back_Needles[2:width:4] 1 to Rightward to Front bed;

        for j in range(0,2):{
            in reverse direction:{
                knit Loops;
            }
        }

        xfer Front_Loops across;
        xfer Back_Needles[1:width:4] 1 to Leftward to Front bed;
        xfer Back_Needles[0:width:4] 1 to Rightward to Front bed;
        xfer Back_Needles[2:width:4] 1 to Rightward to Front bed;
        xfer Back_Needles[3:width:4] 1 to Leftward to Front bed;

    }
    in reverse direction:{
        knit Loops;
    }

    in reverse direction:{
        knit Front_Loops;
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}
