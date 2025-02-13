import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;
width = 40;
height = 40;
with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width);
    releasehook;
}

with Carrier as carr2:{
    in reverse direction:{
        tuck Front_Needles[width:width+6:2];
    }
    releasehook;
}
with Carrier as carr1:{
    in current direction:{
        knit Front_Needles[22:width];
    }
}

for i in range(0, 9):{
    if i != 0:{
        with Carrier as carr1:{
            in reverse direction:{
                knit Front_Needles[22:width];
            }
        }
    }
    with Carrier as carr2:{
        print("pleaseeeee");
    }
    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[18:22];
        }
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[0:18];
        }
    }
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:18];
        }
    }
    with Carrier as carr2:{
        print("pleaseeeee");
    }
    //if i != 8:{
        with Carrier as [carr2, carr1]:{
            in current direction:{
                knit Front_Needles[18:22];
            }
        }
        with Carrier as carr1:{
            in current direction:{
                knit Front_Needles[22:width];
            }
        }
    //}
    if i == 0:{
        drop Front_Needles[width:width+6:2];
    }
}

pause;
for i in range(0, 2):{
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[22:width];
        }
    }
    with Carrier as carr2:{
        print("pleaseeeee");
    }

    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[0:22];
        }
        in reverse direction:{
            knit Front_Needles[0:22];
        }
    }

    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[22:width];
        }
    }
}

cut carr2ri;

with Carrier as carr1:{
    for i in range(0, 18):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
}



