import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;
width = 20;

with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width, is_front = True);
    cast_ons.alt_tuck_cast_on(width, is_front = False);
    in reverse direction:{
        knit Front_Needles[1:width:2];
        knit Back_Needles[0:width:2];
    }

    releasehook;
    in reverse direction:{
        knit Front_Needles[0:width:2];
        knit Back_Needles[1:width:2];
    }
    for i in range(0, 6):{
        in reverse direction:{
            knit Front_Needles[1:width:2];
            knit Back_Needles[0:width:2];
        }
        in reverse direction:{
            knit Front_Needles[0:width:2];
            knit Back_Needles[1:width:2];
        }
    }
}
for j in range(0, 2):{
    with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[1:width:2];
        knit Back_Needles[0:width:2];
    }
    for i in range(0, 2):{
        in reverse direction:{
            knit Front_Needles[0:6:2];
            knit Back_Needles[1:6:2];
        }
        in reverse direction:{
            knit Front_Needles[1:6:2];
            knit Back_Needles[0:6:2];
        }
    }
    in reverse direction:{
        knit Front_Needles[0:width:2];
        knit Back_Needles[1:width:2];
    }
    in reverse direction:{
        knit Front_Needles[14:width];
    }
}
//with Carrier as c3:{
//    in current direction:{
//        tuck Front_Needles[width:width+6:2];
//        //knit Back_Needles[14:width];
//    }
//    releasehook;
//}
//for i in range(0, 2):{
    with Carrier as carr2:{
        if j == 0:{
            in current direction:{
                tuck Front_Needles[width:width+6:2];
                //knit Back_Needles[14:width];
            }
            releasehook;
        }
        in current direction:{
            //tuck Front_Needles[width:width+6:2];
            knit Back_Needles[14:width];
        }
        //releasehook;
        //xfer Front_Needles[6:14:2] across;
        in current direction:{
            knit Front_Needles[7:14:2];
            knit Back_Needles[6:14:2];
        }
    //    xfer Back_Needles[6:14] across;
    //    xfer Front_Needles[7:14:2] across;
        in reverse direction:{
            knit Front_Needles[6:14:2];
            knit Back_Needles[7:14:2];
            //drop Front_Needles[width:width+6:2];
        }
        if j == 0:{
            in current direction:{
                drop Front_Needles[width:width+6:2];
            }
        }
        //xfer Back_Needles[6:14] across;
        for i in range(0, 4):{
            in reverse direction:{
                knit Front_Needles[6:14];
            }
        }
//        in reverse direction:{
//            knit Front_Needles[6:14];
//        }
        //xfer Front_Needles[6:14:2] across;
        in reverse direction:{
            knit Front_Needles[7:14:2];
            knit Back_Needles[6:14:2];
        }
        in reverse direction:{
            knit Front_Needles[6:14:2];
            knit Back_Needles[7:14:2];
            knit Back_Needles[14:width];
        }
    }
    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[14:width];
        }
        for i in range(0, 4):{
            in reverse direction:{
                knit Front_Needles[1:width:2];
                knit Back_Needles[0:width:2];
            }
            in reverse direction:{
                knit Front_Needles[0:width:2];
                knit Back_Needles[1:width:2];
            }
        }
    }
//    with Carrier as c1:{
//        for j in range(0, 4):{
//            in reverse direction:{
//                knit Front_Loops;
//            }
//        }
//    }
}
with Carrier as carr1:{
//    in current direction:{
//        knit Front_Needles[14:width];
//    }
    for i in range(0, 4):{
        in reverse direction:{
            knit Front_Needles[1:width:2];
            knit Back_Needles[0:width:2];
        }
        in reverse direction:{
            knit Front_Needles[0:width:2];
            knit Back_Needles[1:width:2];
        }
    }
}