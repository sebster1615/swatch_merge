import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;
width = 36;
height = 36;
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
    in reverse direction:{
        tuck Front_Needles[width:width+6];
    }
    releasehook;
}
//with Carrier as c1:{
//    print("pleaseeeee");
//}
with Carrier as [carr2, carr1]:{
    in current direction:{
        knit Front_Needles[18:width];
    }
    releasehook;
}
for i in range(0, 2):{
    if i > 0:{
        with Carrier as [carr2, carr1]:{
            in reverse direction:{
                knit Front_Needles[18:width];
            }
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
    if i == 1:{
        drop Front_Needles[width:width+6];
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
        knit Front_Needles[18:22];
    }
}
with Carrier as carr1:{
    in current direction:{
        knit Front_Needles[22:width];
    }
}
for i in range(0, 10):{
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

