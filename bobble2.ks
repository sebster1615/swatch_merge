import cast_ons;
import bind_offs;

carr = c1;
//cast on at least bobble_num*7
width = 40;
height = 3;

bobble_start = 5; //stays constant
bobble_num = 5;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width);
    //releasehook;
    for j in range(0, 5):{
        in reverse direction:{
            knit Front_Loops;
        }
    }

    for i in range(0, height):{
    //with Carrier as c1:{


        //first full pass
        //xfer Front_Needles[0:5] across;
        in reverse direction:{
            knit Front_Needles[0:bobble_start];
            //knit Front_Needles[10:width+3];
        }
        //start of bobble creation (increases)
        temp_width = width;
        for k in range(0, int(bobble_num*10), 10):{

            xfer Front_Needles[bobble_start+1+k:temp_width] 2 to Rightward to Back bed;
            xfer Back_Needles[bobble_start+3+k:temp_width+2] 1 to Rightward to Front bed;

//            in reverse direction:{
//                knit Front_Needles[k:bobble_start+k];
//                //knit Front_Needles[10:width+3];
//            }


            in current direction:{
                knit Front_Needles[bobble_start+k];
                tuck Back_Needles[bobble_start+1+k];
                tuck Front_Needles[bobble_start+2+k];
                tuck Back_Needles[bobble_start+3+k];
                knit Front_Needles[bobble_start+4+k];
            }

            in reverse direction:{
                knit Front_Needles[bobble_start+k];
                knit Back_Needles[bobble_start+1+k];
                knit Front_Needles[bobble_start+2+k];
                knit Back_Needles[bobble_start+3+k];
                knit Front_Needles[bobble_start+4+k];
            }
            in reverse direction:{
                knit Front_Needles[bobble_start+k];
                knit Back_Needles[bobble_start+1+k];
                knit Front_Needles[bobble_start+2+k];
                knit Back_Needles[bobble_start+3+k];
            }
            if (bobble_num == 1) or (k + 10 == bobble_num*10):{
                in current direction:{
                    knit Front_Needles[bobble_start+4+k:temp_width+3];
                }
            }else:{
                in current direction:{
                    knit Front_Needles[bobble_start+4+k:bobble_start+5+k+5];
                }
            }
            temp_width = temp_width+3;
        }
        //temp_width = temp_width+3;
        xfer Back_Loops across;
        in reverse direction:{
            knit Front_Needles[bobble_start+(bobble_num*10)-10:temp_width];
        }
        //bobble height knit
        for k in reversed(range(0, bobble_num)):{
            for j in range(0, 4):{
                in reverse direction:{
                    knit Front_Needles[bobble_start+(k*10):bobble_start+4+(k*10)];
                }
                //releasehook;
            }
            if (bobble_num == 1):{
                in current direction:{
                    knit Front_Needles[0:bobble_start+(k*10)];
                }
            }else:{
                in current direction:{
                    knit Front_Needles[bobble_start+(k*10)-10:bobble_start+(k*10)];
                }
            }
        }
        //first and second bobble decrease
        in current direction:{
            knit Front_Needles[0:bobble_start];
        }

        for k in range(0, int(bobble_num*10), 10):{
            if k == 0:{
            xfer Front_Needles[0+k:bobble_start+1+k] 1 to Rightward to Back bed;
            xfer Back_Needles[1+k:bobble_start+2+k] across;
            //xfer Back_Loops across;
            }else:{
                xfer Front_Needles[0+k-1:bobble_start+1+k] 1 to Rightward to Back bed;
                xfer Back_Needles[1+k-1:bobble_start+2+k] across;
            }

        //for k in range(0, int(bobble_num*10), 10):{
            if (k+10) == (bobble_num*10):{
                xfer Front_Needles[bobble_start+3+k:temp_width] 1 to Leftward to Back bed;
                xfer Back_Needles[bobble_start+2+k:temp_width-1] across;
            }else:{
                xfer Front_Needles[bobble_start+3+k] 1 to Leftward to Back bed;
                xfer Back_Needles[bobble_start+2+k] across;
            }
        }


        //knit decreases and xfer to eliminate gaps
        count = 1;
        for k in range(0, int(bobble_num*10), 10):{

            if k == 0:{
                in reverse direction:{
                    knit Front_Needles[1+k:bobble_start+1+k];
                }
            }else:{
                in current direction:{
                    knit Front_Needles[k:bobble_start+1+k];
                }
            }
            if (k+10) == (bobble_num*10):{
                in current direction:{
                    knit Front_Needles[bobble_start+1+k:temp_width-1];
                }
            }else:{
                in current direction:{
                    knit Front_Needles[bobble_start+1+k:bobble_start+3+k];
                }
            }
            if (k+10) != (bobble_num*10):{
                xfer Front_Needles[count:bobble_start+3+k] 2 to Rightward to Back bed;
                count = count + 2;
                xfer Back_Needles[count:bobble_start+5+k] 0 to Rightward to Front bed;
                //count = count + 1;
            }
        }
//        in reverse direction:{
//            knit Front_Needles[1:bobble_start+1];
//        }
//        in current direction:{
//            knit Front_Needles[bobble_start+1:bobble_start+3];
//        }
        //third and final decrease
        for k in range(0, int(bobble_num*7), 7):{
            xfer Front_Needles[bobble_start+(bobble_num*2)+k:temp_width-1] 1 to Leftward to Back bed;
            xfer Back_Loops across;
            temp_width = temp_width - 1;
//            in reverse direction:{
//            knit Front_Loops;
//        }
        }
        //knit 2 courses
        for k in range(0, 2):{
            in reverse direction:{
                knit Front_Loops;
            }
        }
        //xfer back to origin for next repeat of pattern
        for k in range(0, int((bobble_num*2)-1)):{
            xfer Front_Loops 1 to Leftward to Back bed;
            xfer Back_Loops across;
            in reverse direction:{
                knit Front_Loops;
            }
        }
    }
    xfer Back_Loops across;
    bind_offs.chain_bind_off(Front_Needles[0:width], Rightward, 6);
}


