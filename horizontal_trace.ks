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
    for i in range(0, 19):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
}
with Carrier as carr2:{
    in current direction:{
        tuck Front_Needles[width:width+6:2];
    }
    releasehook;
}
with Carrier as [carr2, carr1]:{
    in reverse direction:{
        knit Front_Needles[0:width];
    }
    releasehook;
    for j in range(0, 3):{
        in reverse direction:{
            knit Front_Needles[0:width];
        }
        if j == 0:{
            drop Front_Needles[width:width+6:2];
        }
    }

}
with Carrier as carr1:{
    for j in range(0, 20):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
}
