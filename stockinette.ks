import cast_ons;
import bind_offs;

//Stockinette
carr = c1;

width = 60;
height = 60;
with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, height):{
        in reverse direction:{
            knit Front_Loops;
        }
    }

//    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}
