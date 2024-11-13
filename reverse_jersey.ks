import cast_ons;
import bind_offs;

//Reverse Stockinette/Jersey
carr = c2;
width = 40;
height = 40;
with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);
    xfer Front_Loops across;

    for i in range(0, height):{
        in reverse direction:{
            knit Back_Loops;
        }
    }

    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}