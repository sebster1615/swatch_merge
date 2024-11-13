import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;

width = 40;
height = 40;

with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width);
    in reverse direction:{
        knit Front_Loops;
    }
    releasehook;
}
for i in range(0, height, 2):{
    with Carrier as carr2:{
        in reverse direction:{
            knit Front_Needles[i:width];
        }
        releasehook;
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[0:i];
        }
    }

    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:i+1];
        }
    }

    with Carrier as carr2:{
        in current direction:{
            knit Front_Needles[i+1:width];
        }
    }

}
with Carrier as carr2:{
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}