import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;
carr3 = c3;
width = 40;
height = 40;

with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width);
    in reverse direction:{
        knit Front_Loops;
    }
    releasehook;
    for i in range(0, 5):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
}
with Carrier as carr3:{
    in reverse direction:{
        tuck Front_Needles[width:width+6:2];
    }
    releasehook;
}

with Carrier as carr1:{
    in current direction:{
        knit Front_Needles[30:width];
    }
}

for i in range(0, 3):{
    if i != 0:{
        with Carrier as carr1:{
            in reverse direction:{
                knit Front_Needles[30:width];
            }
        }
    }
    with Carrier as c3:{
        print("pleaseeeee");
    }
    with Carrier as [carr3, carr1]:{
        in current direction:{
            knit Front_Needles[24:30];
        }
        releasehook;
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[16:24];
        }
    }
    if i == 0:{
        with Carrier as carr2:{
            //print("pleaseeeee");
            in current direction:{
                tuck Front_Needles[width+6:width+12:2];
                knit Back_Needles[30];
            }
            releasehook;
        }

    }
    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[10:16];
        }
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[0:10];
        }
    }
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:10];
        }
    }
    with Carrier as carr2:{
        print("pleaseeeee");
    }
    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[10:16];
        }
    }

    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[16:24];
        }
    }
    if i != 2:{
        with Carrier as carr3:{
            print("pleaseeeee");
        }
        with Carrier as [carr3, carr1]:{
            in current direction:{
                knit Front_Needles[24:30];
            }
        }
        if i == 0:{
            in current direction:{
                drop Back_Needles[30];
            }
        }
        with Carrier as carr1:{
            in current direction:{
                knit Front_Needles[30:width];
            }
        }
    }
    if i == 0:{
        in current direction:{
            drop Front_Needles[width:width+12:2];
        }
    }
}
with Carrier as carr3:{
    print("pleaseeeee");
}
with Carrier as [carr3, carr1]:{
    in current direction:{
        knit Front_Needles[24:40];
    }
}


for i in range(0, 3):{
    with Carrier as [carr3, carr1]:{
        in reverse direction:{
            knit Front_Needles[24:40];
        }
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[16:24];
        }
    }

    with Carrier as carr2:{
        print("pleaseeeee");
    }
    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[0:16];
        }
        in reverse direction:{
            knit Front_Needles[0:16];
        }
    }
//    with Carrier as [c2, c1]:{
//        in reverse direction:{
//            knit Front_Needles[0:16];
//        }
//    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[16:24];
        }
    }
    if i != 2:{
        with Carrier as carr3:{
            print("pleaseeeee");
        }
        with Carrier as [carr3, carr1]:{
            in current direction:{
                knit Front_Needles[24:40];
            }
        }
    }
}
with Carrier as carr3:{
    print("pleaseeeee");
}
with Carrier as [carr3, carr1]:{
    in current direction:{
        knit Front_Needles[24:30];
    }
}
with Carrier as carr1:{
    in current direction:{
        knit Front_Needles[30:40];
    }
}

for i in range(0, 3):{
//    if i != 0:{
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[30:width];
        }
    }
    with Carrier as carr3:{
        print("pleaseeeee");
    }
    with Carrier as [carr3, carr1]:{
        in current direction:{
            knit Front_Needles[24:30];
        }
        releasehook;
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[16:24];
        }
    }
//    with Carrier as c2:{
//        //print("pleaseeeee");
//        in current direction:{
//            tuck Back_Needles[16:22];
//        }
//        releasehook;
//    }
    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[10:16];
        }
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[0:10];
        }
        in reverse direction:{
            knit Front_Needles[0:10];
        }
    }
//    with Carrier as c1:{
//        in reverse direction:{
//            knit Front_Needles[0:10];
//        }
//    }
    with Carrier as carr2:{
        print("pleaseeeee");
    }
    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[10:16];
        }
    }
//    if i == 1:{
//        in current direction:{
//            drop Front_Needles[16:22];
//        }
//    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[16:24];
        }
    }
    //if i != 2:{
    with Carrier as carr3:{
        print("pleaseeeee");
    }
    with Carrier as [carr3, carr1]:{
        in current direction:{
            knit Front_Needles[24:30];
        }
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[30:width];
        }
    }
    //}
//    if i == 1:{
//        in current direction:{
//            drop Front_Needles[width:width+6];
//        }
//    }
}
cut carr3;
cut carr2;
with Carrier as carr1:{
    for i in range(0, 6):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
}