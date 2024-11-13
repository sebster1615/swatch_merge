import cast_ons;
import bind_offs;

carr = c2;
//any num cast on
width = 48;
height = 48;
welt_size = 3;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, int(height/(welt_size*2))):{
        for j in range(0, welt_size):{
            in reverse direction:{
                knit Front_Loops;
            }
        }
        xfer Front_Loops across;
        for j in range(0, welt_size):{
            in reverse direction:{
                knit Back_Loops;
            }
        }
        xfer Back_Loops across;
    }

    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}