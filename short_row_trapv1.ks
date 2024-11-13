import cast_ons;
import bind_offs;

carr1 = c1;
carr2 = c2;
width = 20;
//height = 12;

with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width);

    in reverse direction:{
        knit Front_Loops;
    }
    releasehook;
//    in reverse direction:{
//        knit Front_Loops;
//    }
    //releasehook;
}
with Carrier as carr2:{
    //sr 1
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[9:11];
        }
    }
//    in reverse direction:{
//        knit Front_Needles[8:12];
//    }
//    in reverse direction:{
//        knit Front_Needles[8:12];
//    }
    releasehook;
}

//course to reduce tension
with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:9];
        knit Front_Needles[11:width];
    }
}

with Carrier as carr2:{
    //sr 2
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[8:12];
        }
    }
//    in reverse direction:{
//        knit Front_Needles[6:14];
//    }
//    in reverse direction:{
//        knit Front_Needles[6:14];
//    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:8];
        //tuck Front_Needles[6:14];
        knit Front_Needles[12:width];
    }
}

with Carrier as carr2:{
    //sr 3
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[7:13];
        }
    }
//    in reverse direction:{
//        knit Front_Needles[4:16];
//    }
//    in reverse direction:{
//        knit Front_Needles[4:16];
//    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:7];
        //tuck Front_Needles[4:16];
        knit Front_Needles[13:width];
    }
}

with Carrier as carr2:{
    //sr 4
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[6:14];
        }
    }
//    in reverse direction:{
//        knit Front_Needles[2:18];
//    }
//    in reverse direction:{
//        knit Front_Needles[2:18];
//    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:6];
        //tuck Front_Needles[2:18];
        knit Front_Needles[14:width];
    }
}

with Carrier as carr2:{
    //sr final
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[5:15];
        }
    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:5];
        //tuck Front_Needles[2:18];
        knit Front_Needles[15:width];
    }
}

with Carrier as carr2:{
    //sr final
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[4:16];
        }
    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:4];
        //tuck Front_Needles[2:18];
        knit Front_Needles[16:width];
    }
}

with Carrier as carr2:{
    //sr final
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[3:17];
        }
    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:3];
        //tuck Front_Needles[2:18];
        knit Front_Needles[17:width];
    }
}

with Carrier as carr2:{
    //sr final
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[2:18];
        }
    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:2];
        //tuck Front_Needles[2:18];
        knit Front_Needles[18:width];
    }
}

with Carrier as carr2:{
    //sr final
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[1:19];
        }
    }
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:1];
        //tuck Front_Needles[2:18];
        knit Front_Needles[19:width];
    }
}

with Carrier as carr2:{
    //sr final
    for i in range(0,2):{
        in reverse direction:{
            knit Front_Needles[0:width];
        }
    }
}
