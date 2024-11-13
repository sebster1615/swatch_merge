import cast_ons;
import bind_offs;

//ribbing any size texture

carr =  c1;
width = 39;
height = 40;
ribbing_size = 3;
with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);

    for i in range(0, ribbing_size):{
        xfer Front_Needles[ribbing_size+i:width:ribbing_size*2] across to Back bed;
    }
    for i in range(0, height):{
        in reverse direction:{
            knit Loops;
        }
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}



