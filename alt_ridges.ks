import cast_ons;
import bind_offs;

width = 52;
height = 3;

carr = c2;

f_needles = [n for n in Front_Needles[0:width]];
b_needles = [n for n in Back_Needles[0:width]];
b_ridges1 = [b_needles[i:i+8] for i in range(2,len(b_needles),20)];
b_ridges2 = [b_needles[i:i+8] for i in range(12,len(b_needles),20)];
f_ridges1 = [f_needles[i:i+8] for i in range(2,len(f_needles),20)];
f_ridges2 = [f_needles[i:i+8] for i in range(12,len(f_needles),20)];
b_knits1 = [b_needles[i:i+12] for i in range(10,len(b_needles),20)];
b_knits2 = [b_needles[i:i+12] for i in range(0,len(b_needles),20)];

//cast on multiple of 20s + 2

ridge_num1 = int(((width-12)/20)+1); //ridge num for first row
ridge_num2 = int(((width-12)/20)); //ridge num for second alt row

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);
    xfer Front_Loops across;
    for j in range(0, 5):{
        in reverse direction:{
            knit Back_Loops;
        }
    }
    //split to create first row ridges
    for i in range(0, height):{
        in reverse direction:{
            knit Back_Needles[0:2];
        }
        for j in range(0, ridge_num1):{
            in current direction:{
                split b_ridges1[j];
            }
            in current direction:{
                knit b_knits1[j];
            }
        }
        //knit first row ridges
        for j in range(0, 1):{

            in reverse direction:{
                knit b_knits1[ridge_num1-1];
            }
            for k in reversed(range(0, ridge_num1)):{
                //print(k);
                in current direction:{
                    knit f_ridges1[k];
                }
                in reverse direction:{
                    knit b_ridges1[k];
                }
                in reverse direction:{
                    knit f_ridges1[k];
                }
                if k != 0:{
                    in current direction:{
                        knit b_knits1[k-1];
                    }
                }
            }

            in current direction:{
                knit Back_Needles[0:2];
            }
            in reverse direction:{
                knit Back_Needles[0:2];
            }
            for k in range(0, ridge_num1):{
                //print(k);
                in current direction:{
                    knit f_ridges1[k];
                }
                in reverse direction:{
                    knit b_ridges1[k];
                }
                in reverse direction:{
                    knit f_ridges1[k];
                }
                in current direction:{
                    knit b_knits1[k];
                }
            }
        }

        xfer Front_Loops across;

        //spacing
        for j in range(0, 3):{
            in reverse direction:{
                knit Back_Loops;
            }
        }

        //split to create alternating ridges row
        in reverse direction:{
            knit b_knits2[0];
        }

        for j in range(0, ridge_num2):{
            in current direction:{
                split b_ridges2[j];
            }
            in current direction:{
                knit b_knits2[j+1];
            }

        }
        //knit alt ridges row
        for j in range(0, 1):{
            in reverse direction:{
                knit b_knits2[ridge_num2];
            }
            for k in reversed(range(0, ridge_num2)):{
                in current direction:{
                    knit f_ridges2[k];
                }
                in reverse direction:{
                    knit b_ridges2[k];
                }
                in reverse direction:{
                    knit f_ridges2[k];
                }
                in current direction:{
                    knit b_knits2[k];
                }
            }
            in reverse direction:{
                knit b_knits2[0];
            }
            for k in range(0, ridge_num2):{
                in current direction:{
                    knit f_ridges2[k];
                }
                in reverse direction:{
                    knit b_ridges2[k];
                }
                in reverse direction:{
                    knit f_ridges2[k];
                }
                in current direction:{
                    knit b_knits2[k+1];
                }
            }
        }
        //spacing
        xfer Front_Loops across;
        for j in range(0, 3):{
            in reverse direction:{
                knit Back_Loops;
            }
        }
    }
    xfer Back_Loops across;
    for i in range(0, 4):{
        in reverse direction:{
            knit Front_Loops;
        }
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Rightward, 6);
}