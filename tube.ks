import cast_ons;

carr1 = c1;
carr2 = c2; //elastic yarn

width = 20;
start_height = 10;
middle_height = 40;
elastic_height = 20;

with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width, is_front=True, knit_lines=0);
    cast_ons.alt_tuck_cast_on(width, is_front=False, knit_lines=0);
    for i in range(0, start_height):{
        in reverse direction:{
            knit Front_Loops;
        }
        releasehook;
        in reverse direction:{
            knit Back_Loops;
        }
    }
}

with Carrier as carr2:{
    for i in range(0, elastic_height):{
        in reverse direction:{
            knit Front_Loops;
        }
        releasehook;
        in reverse direction:{
            knit Back_Loops;
        }
    }
}

with Carrier as carr1:{
    for i in range(0, middle_height):{
        in reverse direction:{
            knit Front_Loops;
        }
        in reverse direction:{
            knit Back_Loops;
        }
    }
}

with Carrier as carr2:{
    for i in range(0, elastic_height):{
        in reverse direction:{
            knit Front_Loops;
        }
        in reverse direction:{
            knit Back_Loops;
        }
    }
}

with Carrier as carr1:{
    for i in range(0, start_height):{
        in reverse direction:{
            knit Front_Loops;
        }
        in reverse direction:{
            knit Back_Loops;
        }
    }
}
