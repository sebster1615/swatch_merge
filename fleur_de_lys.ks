import cast_ons;
import bind_offs;

//cast on even num
width = 48;
height = 8;

carr1 = c1; //color #1
carr2 = c2; //color #2

with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width, knit_lines = 2);
}
for i in range(0, height):{
    //row 1
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:width:6];
            knit Front_Needles[1:width:6];
            knit Front_Needles[2:width:6];
            knit Front_Needles[3:width:6];
            knit Front_Needles[5:width:6];
        }
        releasehook;
    }
    with Carrier as carr2:{
        in current direction:{
            knit Front_Needles[4:width:6];
        }
        releasehook;
    }

    //row 2
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:width:6];
            knit Front_Needles[1:width:6];
            knit Front_Needles[2:width:6];
        }
    }
    with Carrier as carr2:{
        in current direction:{
            knit Front_Needles[3:width:6];
            knit Front_Needles[4:width:6];
            knit Front_Needles[5:width:6];
        }
    }

    //row 3
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:width:6];
            knit Front_Needles[1:width:6];
            knit Front_Needles[2:width:6];
            knit Front_Needles[3:width:6];
            knit Front_Needles[5:width:6];
        }
    }
    with Carrier as carr2:{
        in current direction:{
            knit Front_Needles[4:width:6];
        }
    }
    //row 4
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:width:6];
            knit Front_Needles[2:width:6];
            knit Front_Needles[3:width:6];
            knit Front_Needles[4:width:6];
            knit Front_Needles[5:width:6];
        }
    }
    with Carrier as carr2:{
        in current direction:{
            knit Front_Needles[1:width:6];
        }
    }

    //row 5
    with Carrier as carr2:{
        in reverse direction:{
            knit Front_Needles[0:width:6];
            knit Front_Needles[1:width:6];
            knit Front_Needles[2:width:6];
        }
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[3:width:6];
            knit Front_Needles[4:width:6];
            knit Front_Needles[5:width:6];
        }
    }

    //row 6
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:width:6];
            knit Front_Needles[2:width:6];
            knit Front_Needles[3:width:6];
            knit Front_Needles[4:width:6];
            knit Front_Needles[5:width:6];
        }
    }
    with Carrier as carr2:{
        in current direction:{
            knit Front_Needles[1:width:6];
        }
    }
}
with Carrier as carr1:{
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Leftward, 6);
}