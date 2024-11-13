import cast_ons;
import bind_offs;

//cast on even num
width = 40;
height = 50;

carr1 = c1; //color #1
carr2 = c2; //color #2

with Carrier as carr1:{
    cast_ons.alt_tuck_cast_on(width);
}

with Carrier as carr1:{
    in reverse direction:{
        knit Front_Needles[0:width:4];
        knit Front_Needles[1:width:4];
    }
    releasehook;
}

with Carrier as carr2:{
    in current direction:{
        knit Front_Needles[2:width:4];
        knit Front_Needles[3:width:4];
    }
    releasehook;
}

for i in range(0, height):{
    with Carrier as carr1:{
        in reverse direction:{
            knit Front_Needles[0:width:4];
            knit Front_Needles[1:width:4];
        }
    }
    with Carrier as carr2:{
        in current direction:{
            knit Front_Needles[2:width:4];
            knit Front_Needles[3:width:4];
        }
    }


        //for intarsia?
//        for k in range(4, width, 4):{
//            with Carrier as c1:{
//                in current direction:{
//                    knit Front_Needles[k:k+2];
//                }
//                //releasehook;
//            }
//            with Carrier as c2:{
//                in current direction:{
//                    knit Front_Needles[k+2:k+4];
//                }
//                //releasehook;
//            }
//        }
//
//        with Carrier as c2:{
//            in reverse direction:{
//                knit Front_Needles[width-2:width];
//            }
//            //releasehook;
//        }
//        with Carrier as c1:{
//            in current direction:{
//                knit Front_Needles[width-4:width-2];
//            }
//            //releasehook;
//        }
//        for k in range(4, width, 4):{
//            with Carrier as c2:{
//                in current direction:{
//                    knit Front_Needles[width-(k+2):width-k];
//                }
//                //releasehook;
//            }
//            with Carrier as c1:{
//                in current direction:{
//                    knit Front_Needles[width-(k+4):width-(k+2)];
//                }
//                //releasehook;
//            }
//        }

    //}
//    //2nd level
//    for j in range(0, 3):{
//        with Carrier as c2:{
//            in reverse direction:{
//                knit Front_Needles[0:5];
//            }
//            //releasehook;
//        }
//        with Carrier as c1:{
//            in current direction:{
//                knit Front_Needles[5:10];
//            }
//            //releasehook;
//        }
//        for k in range(10, width, 10):{
//            with Carrier as c2:{
//                in current direction:{
//                    knit Front_Needles[k:k+5];
//                }
//                //releasehook;
//            }
//            with Carrier as c1:{
//                in current direction:{
//                    knit Front_Needles[k+5:k+10];
//                }
//                //releasehook;
//            }
//        }
//
//        with Carrier as c1:{
//            in reverse direction:{
//                knit Front_Needles[width-5:width];
//            }
//            //releasehook;
//        }
//        with Carrier as c2:{
//            in current direction:{
//                knit Front_Needles[width-10:width-5];
//            }
//            //releasehook;
//        }
//        for k in range(10, width, 10):{
//            with Carrier as c1:{
//                in current direction:{
//                    knit Front_Needles[width-(k+5):width-k];
//                }
//                //releasehook;
//            }
//            with Carrier as c2:{
//                in current direction:{
//                    knit Front_Needles[width-(k+10):width-(k+5)];
//                }
//                //releasehook;
//            }
//        }
//
//    }
}
with Carrier as carr1:{
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Rightward, 6);
}