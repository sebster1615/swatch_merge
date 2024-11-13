//short row method for bubble pop shape

import cast_ons;
import bind_offs;

carr =  c1;
width = 64;
bubble_start1 = 13;
bubble_start2 = 15;
bubble_mid1 = 10;
bubble_mid2 = 18;
height = 2;
spacing = 18;

f_needles = [n for n in Front_Needles[0:width]];
b_needles = [n for n in Back_Needles[0:width]];
bubble_starts = [f_needles[i:i+2] for i in range(bubble_start1,len(f_needles), spacing)];
print(bubble_starts);

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);
    //releasehook;

    //seed stitch
    xfer Front_Needles[1:width:2] across to back bed;

    for i in range(0, 5):{
        in reverse direction:{
            knit Loops;
        }
        xfer Loops across;
    }
    in reverse direction:{
        knit Loops;
    }
    //start of pattern
    xfer Back_Loops across;
    in reverse direction:{
        knit Front_Loops;
    }

    for k in range(0, height):{
        for i in range(0, 4):{
            in reverse direction:{
                knit Front_Loops;
            }
        }
        for i in range(0, 4):{
            if i != 1:{
                in reverse direction:{
                    knit Front_Needles[0:bubble_start1-i];
                    knit Front_Needles[bubble_start1-i:bubble_start2+i];
                }
                for j in range(0, len(bubble_starts)):{
                    for w in range(0,2):{
                        in reverse direction:{
                            knit Front_Needles[bubble_start1+(j*spacing)-i:bubble_start2+(j*spacing)+i];
                        }
                    }
                    if ((j+1) != len(bubble_starts)):{
                        in current direction:{
                            knit Front_Needles[bubble_start2+(j*spacing)+i:bubble_start1+((j+1)*spacing)-i];
                            knit Front_Needles[bubble_start1+((j+1)*spacing)-i:bubble_start2+((j+1)*spacing)+i];
                        }
                    }else:{
                        in current direction:{
                            knit Front_Needles[bubble_start2+((j)*spacing)+i:width];
                        }
                    }
                }
                in reverse direction:{
                    knit Front_Loops;
                }

            }
        }

        for i in range(0, 4):{
            if i != 2:{
                in reverse direction:{
                    knit Front_Needles[0:bubble_mid1+i];
                    knit Front_Needles[bubble_mid1+i:bubble_mid2-i];
                }
                for j in range(0, len(bubble_starts)):{
                    for w in range(0,2):{
                        in reverse direction:{
                            knit Front_Needles[bubble_mid1+(j*spacing)+i:bubble_mid2+(j*spacing)-i];
                        }
                    }
                    if ((j+1) != len(bubble_starts)):{
                        in current direction:{
                            knit Front_Needles[bubble_mid2+(j*spacing)-i:bubble_mid1+((j+1)*spacing)+i];
                            knit Front_Needles[bubble_mid1+((j+1)*spacing)+i:bubble_mid2+((j+1)*spacing)-i];
                        }
                    }else:{
                        in current direction:{
                            knit Front_Needles[bubble_mid2+((j)*spacing)-i:width];
                        }
                    }
                }
                in reverse direction:{
                    knit Front_Loops;
                }
            }
        }
        for i in range(0, 4):{
            in reverse direction:{
                knit Front_Loops;
            }
        }
    }
    //seed stitch
    xfer Front_Needles[1:width:2] across to back bed;

    for i in range(0, 5):{
        in reverse direction:{
            knit Loops;
        }
        xfer Loops across;
    }
    in reverse direction:{
        knit Loops;
    }
    xfer Back_Loops across;
    for i in range(0, 2):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Rightward, 6);
}
