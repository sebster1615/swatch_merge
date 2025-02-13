import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;
width = 20;
//height = 20;
//with Gauge as 2:{
with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width, is_front = True);
    cast_ons.alt_tuck_cast_on(width, is_front = False);
    //xfer Front_Needles[0:width:2] across to Back bed;
    in reverse direction:{
        knit Front_Needles[1:width:2];
        knit Back_Needles[0:width:2];
    }

    releasehook;
    in reverse direction:{
        knit Front_Needles[0:width:2];
        knit Back_Needles[1:width:2];
    }
    //xfer Back_Loops across;

    //xfer Front_Needles[1:width:2] across to Back bed;
    for i in range(0, 5):{
        in reverse direction:{
            knit Front_Needles[1:width:2];
            knit Back_Needles[0:width:2];
        }
        in reverse direction:{
            knit Front_Needles[0:width:2];
            knit Back_Needles[1:width:2];
        }
    }
    //xfer Back_Loops across;

//    xfer Front_Needles[14:width:2] across to Back bed;
//    xfer Front_Needles[0:6:2] across to Back bed;

}
for j in range(0, 5):{

    if j == 0:{
        with Carrier as carr2:{
            in reverse direction:{
                tuck Front_Needles[width:width+6:2];
            }
        }
        releasehook;

        with Carrier as carr1:{
            in current direction:{
                knit Front_Needles[15:width:2];
                knit Back_Needles[14:width:2];
            }
        }
    }else:{
        with Carrier as carr1:{
            in reverse direction:{
                knit Front_Needles[15:width:2];
                knit Back_Needles[14:width:2];
            }
        }
    }

    with Carrier as carr2:{
        print("Hellooo");
    }

    //with Gauge as 2, Sheet as s0:{
    with Carrier as [carr1, carr2]:{//}, Sheet as 1:{
        in current direction:{
            knit Front_Needles[6:14];
        }
        releasehook;
    }
    //}

    with Carrier as carr1:{
        in current direction:{
            knit Front_Needles[1:6:2];
            knit Back_Needles[0:6:2];
        }
    //    xfer Back_Loops across;
    //    xfer Front_Needles[1:6:2] across;
        in reverse direction:{
            knit Front_Needles[0:6:2];
            knit Back_Needles[1:6:2];
        }
    }

    with Carrier as carr3:{
        print("Hellooo");
    }
    //with Gauge as 2, Sheet as s1:{
    //push Front_Needles[6:14] to layer 1;
    with Carrier as [carr3, carr1]:{//, Sheet as 1:{
        //xfer Front_Needles[6:14] across;
        in current direction:{
            knit Back_Needles[6:14];
        }
    }
    //}
    //push Front_Needles[6:14] to layer 0;
    with Carrier as carr1:{//, Sheet as 0:{
        //xfer Front_Needles[15:width:2] across;
        in current direction:{
            knit Front_Needles[14:width:2];
            knit Back_Needles[15:width:2];
        }
        if j == 0:{
            in current direction:{
                drop Front_Needles[width:width+6:2];
            }
        }
    }
    //push Front_Needles[6:14] to layer 1;
    //with Gauge as 2, Sheet as s1:{
    with Carrier as carr2:{//, Sheet as 1:{
        for i in range(0, 6):{
            in reverse direction:{
                knit Back_Needles[6:14];
            }
        }
    }
    //push Front_Needles[6:14] to layer 0;
    //}

    with Carrier as carr1:{//, Sheet as 0:{
    //    xfer Back_Loops across;
    //    xfer Front_Needles[14:width:2] across;

        in reverse direction:{
            knit Front_Needles[15:width:2];
            knit Back_Needles[14:width:2];
        }
    }

    with Carrier as carr2:{
        print("helloooo");
    }
    //with Gauge as 2, Sheet as s0:{
    with Carrier as [carr1, carr2]:{
        in current direction:{
            knit Front_Needles[6:14];
        }
    }
    //}

    with Carrier as carr1:{
        //xfer Front_Needles[0:6:2] across;
        in current direction:{
            knit Front_Needles[1:6:2];
            knit Back_Needles[0:6:2];
        }
    //    xfer Back_Loops across;
    //    xfer Front_Needles[1:6:2] across;

        in reverse direction:{
            knit Front_Needles[0:6:2];
            knit Back_Needles[1:6:2];
        }
    }

    with Carrier as carr2:{
        print("helloooo");
    }
    //with Gauge as 2, Sheet as s1:{
    //push Front_Needles[6:14] to layer 1;
    with Carrier as [carr2, carr1]:{//, Sheet as 1:{
        //xfer Front_Needles[6:14] across;
        in current direction:{
            knit Back_Needles[6:14];
        }
    }
    //}
    //push Front_Needles[6:14] to layer 0;

    with Carrier as carr1:{//, Sheet as 0:{
        //xfer Front_Needles[15:width:2] across;
        in current direction:{
            knit Front_Needles[14:width:2];
            knit Back_Needles[15:width:2];
        }
        //xfer Back_Loops across;
    }
//    with Carrier as c3:{
//        in current direction:{
//            miss Front_Needles[14:width];
//        }
//    }

    with Carrier as carr1:{
        for i in range(0, 1):{
            //xfer Front_Needles[0:width:2] across to Back bed;
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
}
with Carrier as carr1:{
    for i in range(0, 6):{
        //xfer Front_Needles[0:width:2] across to Back bed;
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
//}
//with Gauge as 2, Sheet as 1:{
//    in reverse direction:{
//    knit Front_Needles[1:width:2];
//    }
//}

