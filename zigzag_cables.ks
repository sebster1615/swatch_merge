import cast_ons;
import bind_offs;
import rackNeedles;

carr = c3;
//height multiple of 8 for full pattern displayed
width = 44;
height = 48;
zig_zag_width = 4;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);
    xfer Loops across;
    for i in range(0, 4):{
        in reverse direction:{
            knit Back_Loops;
        }
    }

    for i in range(0, int(height/(zig_zag_width*2))):{
        xfer Back_Needles[2:width:zig_zag_width+2] 1 to Rightward to Front bed;
        xfer Back_Needles[3:width:zig_zag_width+2] 1 to Leftward to Front bed;

        in reverse direction:{
            knit Loops;
        }

        for j in range(0, zig_zag_width):{
            xfer Front_Needles[2+j:width:zig_zag_width+2] across;
            xfer Back_Needles[4+j:width:zig_zag_width+2] across;

            in reverse direction:{
                knit Loops;
            }
        }

        xfer Back_Needles[3+zig_zag_width:width:zig_zag_width+2] 1 to Leftward to Front bed;
        xfer Back_Needles[2+zig_zag_width:width:zig_zag_width+2] 1 to Rightward to Front bed;

        in reverse direction:{
            knit Loops;
        }

        for j in range(0, zig_zag_width):{
            xfer Front_Needles[3+zig_zag_width-j:width:zig_zag_width+2] across;
            xfer Back_Needles[1+zig_zag_width-j:width:zig_zag_width+2] across;

            in reverse direction:{
                knit Loops;
            }
        }
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);

}
