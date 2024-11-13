import cast_ons;
import bind_offs;
import maze_creator;

//*** USER INPUT SECTION ***
carr = c1;
w = 4;
h = 4;
s_position = 4;
//both s's or e's direction cant be true at same time

s_dir_side = False; //True for left side, false for right side
s_bottom = False;
e_position = 3;
e_dir_side = False; //True for right side, false left side
e_top = True;
top_closed = False; //True for top to be closed
//********

//s = (0,1); ***Issue with tuple in KnitScript interpreter???
//e = (7,4);
start_end = maze_creator.maze_start_end_values(s_bottom, s_dir_side, s_position, e_top, e_dir_side, e_position, h, w);

maze_grid = maze_creator.maze_setup(h, w, start_end);
width = (10*w) + (2*(w-1)) + 4;
height = (10*h) + (2*(h-1)) + 4;

start_gap_begin = 0;
start_gap_finish = 0;
start_knit = 0;
end_knit = 0;
rows = 0;

boardersList = [];
tuckList = [];
backKnitList = [];
done = False; //fixes multi border issue with middle knits

fcar_dir_path = reverse;
bcar_dir_path = reverse;
fcar_dir_border = reverse;
bcar_dir_border = reverse;

needle_bed1 = Front_Needles;
needle_bed2 = Back_Needles;
loop_bed = Back_Loops;

with Carrier as carr:{
    cast_ons.alt_tuck_cast_on(width, is_front=True, knit_lines=0);
    cast_ons.alt_tuck_cast_on(width, is_front=False, knit_lines=0);
    for i in range(0, 4):{
        in reverse direction:{
            knit Front_Loops;
        }
        in reverse direction:{
            knit Back_Loops;
        }
    }

    for i in reversed(range(len(maze_grid))):{
        done = False;
        //create start hole and knit bottom wall
        if i == h*2:{
            for j in range(0,len(maze_grid[i])):{
                if (maze_grid[i][j] == 0):{
                    if j % 2 != 0:{
                        pos = ((j+1)/2);
                        start_gap_finish = int((pos*10)+(pos*2));
                        start_gap_begin = int(start_gap_finish-10);
                        xfer Back_Needles[0:start_gap_begin] across to Front bed;
                        xfer Back_Needles[start_gap_finish:width] across to Front bed;
                    }
                    for k in range(0, 2):{
                        in reverse direction:{
                            knit Front_Needles[start_gap_finish:width:2];
                            knit Front_Needles[start_gap_begin:start_gap_finish];
                            knit Front_Needles[0:start_gap_begin:2];
                        }
                        in reverse direction:{
                            knit Front_Needles[start_gap_finish+1:width:2];
                            knit Back_Needles[start_gap_begin:start_gap_finish];
                            knit Front_Needles[1:start_gap_begin:2];
                        }
                    }
                    in reverse direction:{
                        knit Front_Loops;
                        tuck Back_Needles[0:start_gap_begin];
                        tuck Back_Needles[start_gap_finish:width];
                    }
                    in reverse direction:{
                        knit Back_Needles[1:start_gap_begin:2];
                        knit Back_Needles[start_gap_begin+1:start_gap_finish:2];
                        knit Back_Needles[start_gap_finish+1:width:2];
                    }
                    in reverse direction:{
                        knit Back_Needles[0:start_gap_begin:2];
                        knit Back_Needles[start_gap_begin:start_gap_finish:2];
                        knit Back_Needles[start_gap_finish:width:2];
                    }
                }
            }
            if not s_bottom:{
                xfer Back_Loops across;
                in reverse direction:{
                    knit Front_Loops;
                }
                in reverse direction:{
                    knit Front_Loops;
                }
                in reverse direction:{
                    knit Front_Loops;
                    tuck Back_Needles[0:width];
                }
                in reverse direction:{
                    knit Back_Needles[1:width:2];
                }
                in reverse direction:{
                    knit Back_Needles[0:width:2];
                }
            }
        }

        //xfer for wall formation before each knit
        if ((h*2) > i) and i !=0:{
            boardersList.clear();
            tuckList.clear();
            backKnitList.clear();

            for j in range(1,len(maze_grid[i])-1):{
                if (maze_grid[i][j] == 1):{
                    if j % 2 != 0:{
                        pos = ((j+1)/2);
                        start_gap_begin = int((12*pos)-10);
                        start_gap_finish = int(12*pos);
                        if maze_grid[i-1][j] != 1:{
                            tuckList.append(start_gap_begin);
                            tuckList.append(start_gap_finish);
                        }
                        boardersList.append(start_gap_begin);
                        boardersList.append(start_gap_finish);
                        xfer Back_Needles[start_gap_begin:start_gap_finish] across to Front bed;
                    }else:{
                        pos = j;
                        start_gap_begin = int(pos+(10*(pos/2)));
                        start_gap_finish = int(start_gap_begin+2);
                        if maze_grid[i-1][j] != 1:{
                            tuckList.append(start_gap_begin);
                            tuckList.append(start_gap_finish);
                        }
                        if (maze_grid[i-1][j] == 1):{
                            backKnitList.append(start_gap_begin);
                            backKnitList.append(start_gap_finish);
                        }
                        boardersList.append(start_gap_begin);
                        boardersList.append(start_gap_finish);
                        xfer Back_Needles[start_gap_begin:start_gap_finish] across to Front bed;
                    }
                }
            }

            //knit 9 rows for path row (odd)
            if i % 2 != 0:{
                start_knit = 0;
                end_knit = 0;
                repeat = 8;
                if ((i == start_end[0]) and s_dir_side) or ((i == start_end[2]) and (not e_dir_side)):{
                    start_knit = 1;
                    repeat = 4;
                }
                if ((i == start_end[2]) and (e_dir_side)) or ((i == start_end[0]) and (not s_dir_side)):{
                    end_knit = 1;
                    repeat = 4;
                }

                    for r in range(0, repeat):{
                        //check if side hole is start or end and set direction variables
                        //appropriate for the hole based on knit level
                        //knit front row
                        rep = 1;
                        if (start_knit == 1) or (end_knit == 1):{
                            rep = 2;
                        }
                        for w in range(0, rep):{
                            if boardersList:{
                                fcar_dir_path = reverse;
                                in fcar_dir_path direction:{
                                    knit needle_bed1[0:boardersList[0]];
                                }
                            }
                            for y in range(0, len(boardersList), 2):{
                                if y+2 < len(boardersList):{
                                    in current direction:{
                                        knit Front_Needles[boardersList[y]:boardersList[y+1]:2];
                                        knit needle_bed1[boardersList[y+1]:boardersList[y+2]];
                                    }
                                }else:{
                                    in current direction:{
                                        knit Front_Needles[boardersList[y]:boardersList[y+1]:2];
                                        knit needle_bed1[boardersList[y+1]:width];
                                    }

                                }
                            }
                            if (end_knit == 1) and boardersList:{
                                if w % 2 == 0:{
                                    needle_bed1 = Back_Needles;
                                    needle_bed2 = Front_Needles;
                                    loop_bed = Front_Loops;
                                }else:{
                                    needle_bed1 = Front_Needles;
                                    needle_bed2 = Back_Needles;
                                    loop_bed = Back_Loops;
                                }
                            }
                            if (start_knit == 1) and boardersList:{
                                if w % 2 == 0:{
                                    needle_bed1 = Front_Needles;
                                    needle_bed2 = Back_Needles;
                                    loop_bed = Back_Loops;
                                }else:{
                                    needle_bed1 = Back_Needles;
                                    needle_bed2 = Front_Needles;
                                    loop_bed = Front_Loops;
                                }
                            }

                            max = len(boardersList);
                            //knit back row
                            for z in reversed(range(len(boardersList))):{
                                if z % 2 != 0:{
                                    //back knits if only one edge for section
                                    if ((z+1 == len(boardersList)) and (z-2 <= 0)):{
                                        in reverse direction:{
                                            knit Front_Needles[boardersList[z-1]+1:boardersList[z]:2];
                                            knit needle_bed2[0:boardersList[z-1]];
                                            knit needle_bed2[boardersList[z]:width];
                                            //knit Back_Needles[boardersList[z]:width];
                                        }
                                    //first back knits for multiple odd edges
                                    }elif ((z+1 == len(boardersList))) and (z-2 > 0) and (len(boardersList) % 2 != 0):{
                                        in reverse direction:{
                                            knit Front_Needles[boardersList[z-1]+1:boardersList[z]:2];
                                            knit needle_bed2[boardersList[z]:width];
                                        }
                                    //first back knits for even edges
                                    }elif ((z+1 == len(boardersList))) and (z-2 > 0) and (len(boardersList) % 2 == 0):{
                                        in reverse direction:{
                                            knit Front_Needles[boardersList[z-1]+1:boardersList[z]:2];
                                            knit needle_bed2[boardersList[z-2]:boardersList[z-1]];
                                            knit needle_bed2[boardersList[z]:width];
                                        }
                                    //last back knits
                                    }elif ((z+1 != len(boardersList))) and (z-2 <= 0):{
                                        in current direction:{
                                            knit Front_Needles[boardersList[z-1]+1:boardersList[z]:2];
                                            knit needle_bed2[0:boardersList[0]];
                                        }
                                    //middle section back knits
                                    }else:{
                                        in current direction:{
                                            knit Front_Needles[boardersList[z-1]+1:boardersList[z]:2];
                                            knit needle_bed2[boardersList[z-2]:boardersList[z-1]];
                                        }
                                    }
                                }
                            }
                            if (start_knit == 1) and boardersList:{
                                if (w % 2 == 0) :{
                                    needle_bed1 = Back_Needles;
                                    needle_bed2 = Front_Needles;
                                    loop_bed = Front_Loops;
                                }else:{
                                    needle_bed1 = Front_Needles;
                                    needle_bed2 = Back_Needles;
                                    loop_bed = Back_Loops;
                                }
                            }

                        }
                        //if no edges for path row (odd)
                        if not boardersList:{
                            fcar_dir_path = reverse;
                            in fcar_dir_path direction:{
                                knit Front_Needles[0:width];
                            }
                            if (r == 0) and (end_knit == 1):{
                                in reverse direction:{
                                    knit Front_Needles[0:width];
                                }
                            }elif (end_knit == 1):{
                                in reverse direction:{
                                    knit Front_Needles[0:width];
                                }
                            }else:{
                                in reverse direction:{
                                    knit Back_Needles[0:width];
                                }
                            }
                            if (start_knit == 1):{
                                in reverse direction:{
                                    knit Back_Needles[0:width];
                                }
                                in reverse direction:{
                                    knit Front_Needles[0:width];
                                }
                            }
                            if (end_knit == 1):{
                                in reverse direction:{
                                    knit Back_Needles[0:width];
                                }
                                in reverse direction:{
                                    knit Back_Needles[0:width];
                                }
                            }
                            needle_bed1 = Front_Needles;
                            needle_bed2 = Back_Needles;
                            loop_bed = Back_Loops;
                        }

                    }
                //solve tuck problem? Yes!!
                dir_path = reverse;
                start_knit = 0;

                in dir_path direction:{
                    knit Front_Needles[0:width:2];
                }
//                if (end_knit == 1):{
//                    in current direction:{
//                        tuck Front_Needles[width-1];
//                        tuck Back_Needles[width-1];
//                    }
//                    dir_path = current;
//                    start_knit = 0;
//                }
                in reverse direction:{
                    knit Back_Loops;
                }
//                if (start_knit == 1):{
//                    in dir_path direction:{
//                        tuck Back_Needles[0];
//                    }
//                    start_knit = 0;
                //}

                in reverse direction:{
                    knit Front_Needles[1:width:2];
                }

            //knit 2 rows for border row (even)
            }else:{
                for r in range(0, 2):{
                    //knit front rows
                    //dir_path = reverse;
                    for z in reversed(range(len(boardersList))):{

                        if z % 2 != 0:{
                            //front knits if only one edge for section
                            if ((z+1 == len(boardersList)) and (z-2 <= 0)):{
                                in reverse direction:{
                                    knit Front_Needles[boardersList[z-1]:boardersList[z]:2];
                                }
                            //first front knits for multiple odd edges
                            }elif ((z+1 == len(boardersList))) and (z-2 > 0) and (len(boardersList) % 2 != 0):{
                                in reverse direction:{
                                    knit Front_Needles[boardersList[z-1]:boardersList[z]:2];
                                    knit Front_Needles[boardersList[z]:width];
                                }
                            //first knits if only even edges
                            }elif ((z+1 == len(boardersList))) and (z-2 > 0) and (len(boardersList) % 2 == 0):{
                                in reverse direction:{
                                    knit Front_Needles[boardersList[z-1]:boardersList[z]:2];
                                    knit Front_Needles[boardersList[z-2]:boardersList[z-1]];
                                    knit Front_Needles[boardersList[z]:width];
                                }
                                done = True; //*******Could be cause of future issue *******
                            //last Front knits

                            }elif ((z+1 != len(boardersList))) and (z-2 <= 0):{
                                in current direction:{
                                    knit Front_Needles[boardersList[z-1]:boardersList[z]:2];
                                    knit Front_Needles[0:boardersList[0]];
                                }
                            //middle section front knits
                            }else:{
                                if (boardersList[z-1] == boardersList[z-2]) and (done == False):{
                                    in current direction:{
                                        knit Front_Needles[boardersList[z-1]:boardersList[z]:2];
                                        knit Front_Needles[boardersList[z]:boardersList[z+1]]; //for middle right side
                                    }
                                    //done = True;
                                }else:{
                                    in current direction:{
                                        knit Front_Needles[boardersList[z-1]:boardersList[z]:2];
                                        knit Front_Needles[boardersList[z-2]:boardersList[z-1]]; //for middle left side
                                        //knit Front_Needles[boardersList[z]:boardersList[z+1]]; //for middle right side
                                    }
                                    done = True;
                                }
                            }
                        }
                    }
                    //back knits
                    if boardersList:{
                        in reverse direction:{
                            knit Back_Needles[0:boardersList[0]];
                        }
                    }
                    for y in range(0, len(boardersList), 2):{
                        if y+2 < len(boardersList):{
                            in current direction:{
                                knit Front_Needles[boardersList[y]+1:boardersList[y+1]:2];
                                knit Back_Needles[boardersList[y+1]:boardersList[y+2]];
                            }
                        }else:{
                            in current direction:{
                                knit Front_Needles[boardersList[y]+1:boardersList[y+1]:2];
                                knit Back_Needles[boardersList[y+1]:width];
                            }
                        }
                    }
                }
            //TUCKS SECTION
                for z in reversed(range(len(tuckList))):{
                    if (z % 2 != 0):{
                        //back tucks if only one edge for section
                        if ((z+1 == len(tuckList)) and (z-2 <= 0)):{
                            in reverse direction:{
                                tuck Back_Needles[tuckList[z-1]:tuckList[z]];
                                knit Front_Loops;
                            }
                        //first back tucks for multiple odd edges
                        }elif ((z+1 == len(tuckList))) and (z-2 > 0) and (len(tuckList) % 2 != 0):{
                            in reverse direction:{
                                tuck Back_Needles[tuckList[z-1]:tuckList[z]];
                                knit Front_Needles[tuckList[z-1]:width];
                            }
                        //first back tucks for even edges
                        }elif ((z+1 == len(tuckList))) and (z-2 > 0) and (len(tuckList) % 2 == 0):{
                            in reverse direction:{
                                tuck Back_Needles[tuckList[z-1]:tuckList[z]];
                                knit Front_Needles[tuckList[z-2]:tuckList[z-1]];
                                knit Front_Needles[tuckList[z-1]:width];
                            }
                        //last back tucks
                        }elif ((z+1 != len(boardersList))) and (z-2 <= 0):{
                            in current direction:{
                                tuck Back_Needles[tuckList[z-1]:tuckList[z]];
                                knit Front_Needles[0:tuckList[z]];
                            }
                        //middle section back tucks
                        }else:{
                            in current direction:{
                                tuck Back_Needles[tuckList[z-1]:tuckList[z]];
                                knit Front_Needles[tuckList[z-2]:tuckList[z]];
                            }
                        }
                    }
                }
                if not tuckList:{
                    in reverse direction:{
                        knit Front_Loops;
                    }
                }
                if backKnitList:{
                        in reverse direction:{
                            knit Back_Needles[1:backKnitList[0]:2];
                        }
                }
                for y in range(0, len(backKnitList), 2):{
                    if y+2 < len(backKnitList):{
                        in current direction:{
                            knit Back_Needles[backKnitList[y+1]+1:backKnitList[y+2]:2];
                        }
                    }else:{
                        in current direction:{
                            knit Back_Needles[backKnitList[y+1]+1:width:2];
                        }
                    }
                }
                for z in reversed(range(len(backKnitList))):{
                    if z % 2 != 0:{
                        //back knits if only one edge for section
                        if ((z+1 == len(backKnitList)) and (z-2 <= 0)):{
                            in reverse direction:{
                                knit Back_Needles[0:backKnitList[z-1]:2];
                                knit Back_Needles[backKnitList[z]:width:2];
                            }
                        //first back knits for multiple edges
                        }elif ((z+1 == len(backKnitList))) and (z-2 > 0):{
                            in reverse direction:{
                                knit Back_Needles[backKnitList[z-2]:backKnitList[z-1]:2];//knit Back_Loops;
                                knit Back_Needles[backKnitList[z]:width:2];
                            }
                        //last back knits
                        }elif ((z+1 != len(backKnitList))) and (z-2 <= 0):{
                            in current direction:{
                                knit Back_Needles[0:backKnitList[0]:2];
                            }
                        //middle section back knits
                        }else:{
                            in current direction:{
                                knit Back_Needles[backKnitList[z-2]:backKnitList[z-1]:2];
                            }
                        }
                    }
                }
                if not backKnitList:{
                    in reverse direction:{
                        knit Back_Needles[1:width:2];
                    }
                    in reverse direction:{
                        knit Back_Needles[0:width:2];
                    }
                }

            }

        }
        if i == 0:{
            if top_closed:{
                xfer Back_Loops across;
                in reverse direction:{
                    knit Front_Loops;
                }
                in reverse direction:{
                    knit Front_Loops;
                }
            }else:{
                for j in range(0,len(maze_grid[i])):{
                    if (maze_grid[i][j] == 0):{
                        if j % 2 != 0:{
                            pos = ((j+1)/2);
                            start_gap_finish = int((pos*10)+(pos*2));
                            start_gap_begin = int(start_gap_finish-10);
                            xfer Back_Needles[0:start_gap_begin] across to Front bed;
                            xfer Back_Needles[start_gap_finish:width] across to Front bed;
                        }
                        for k in range(0, 2):{
                            in reverse direction:{
                                knit Front_Needles[start_gap_finish:width:2];
                                knit Front_Needles[start_gap_begin:start_gap_finish];
                                knit Front_Needles[0:start_gap_begin:2];
                            }
                            in reverse direction:{
                                knit Front_Needles[start_gap_finish+1:width:2];
                                knit Back_Needles[start_gap_begin:start_gap_finish];
                                knit Front_Needles[1:start_gap_begin:2];
                            }
                        }
                    }
                }
            }
        }
    }
}