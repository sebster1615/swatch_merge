import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;
width = 40;
height = 40;
with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width);
//    in reverse direction:{
//        knit Front_Loops;
//    }
    releasehook;
}

with Carrier as carr2:{
    in reverse direction:{
        tuck Front_Needles[width:width+6];
    }
    releasehook;
}
with Carrier as carr1:{
    in current direction:{
        knit Front_Needles[22:width];
    }
}

//with Carrier as c3:{
//    print("pleaseeeee");
//}
//with Carrier as [c3, c1]:{
//    in current direction:{
//        knit Front_Needles[18:22];
//    }
//}
//with Carrier as c1:{
//    in current direction:{
//        knit Front_Needles[22:width];
//    }
//}
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
        releasehook;
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
//    with Carrier as carr2:{
//        print("pleaseeeee");
//    }
    if i != 8:{
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
    }
    if i == 1:{
        drop Front_Needles[width:width+6];
    }
}

with Carrier as [carr2, carr1]:{
    in current direction:{
        knit Front_Needles[18:width];
    }
}

for i in range(0, 2):{
        with Carrier as [carr2, carr1]:{
            in reverse direction:{
                knit Front_Needles[18:width];
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
    with Carrier as [carr2, carr1]:{
        in current direction:{
            knit Front_Needles[18:width];
        }
    }

}


with Carrier as [carr2, carr1]:{
    in reverse direction:{
        knit Front_Needles[18:width];
    }
}

with Carrier as carr1:{
    in current direction:{
        knit Front_Needles[0:18];
    }
    for i in range(0, 18):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
}



