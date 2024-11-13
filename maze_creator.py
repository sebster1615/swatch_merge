from mazelib import Maze
from mazelib.generate.BinaryTree import BinaryTree
from mazelib.generate.BacktrackingGenerator import BacktrackingGenerator
from mazelib.generate.Prims import Prims


def mazeGen(height, width, s1=0, s2=0, e1=0, e2=3, se_manual=False):
    m = Maze(6)
    m.generator = Prims(height, width)
    m.generate()
    if se_manual:
        m.start = (s1, s2)
        m.end = (e1, e2)
    else:
        m.generate_entrances()

    return m


def mazeGrid(m):
    return m.grid


def mazeSE(m):
    return [m.start, m.end]


def maze_start_end_values(s_bottom, s_dir_side, s_pos, e_top, e_dir_side, e_pos, h, w):
    if s_bottom:
        start_horiz = (s_pos + (s_pos - 1))
        start_vert = h * 2
    elif s_dir_side:
        start_vert = (s_pos + (s_pos - 1))
        start_horiz = 0
    else:
        start_vert = (s_pos + (s_pos - 1))
        start_horiz = w * 2
    if e_top:
        end_horiz = (e_pos + (e_pos - 1))
        end_vert = 0
    elif e_dir_side:
        end_vert = (e_pos + (e_pos - 1))
        end_horiz = w * 2
    else:
        end_vert = (e_pos + (e_pos - 1))
        end_horiz = 0
    return [start_vert, start_horiz, end_vert, end_horiz]


def maze_setup(h,w, start_end, man_set_se=True):
    maze = mazeGen(h, w, start_end[0], start_end[1], start_end[2], start_end[3], man_set_se)
    print(maze)
    maze_grid = mazeGrid(maze)
    maze_grid[start_end[0]][start_end[1]] = 0
    maze_grid[start_end[2]][start_end[3]] = 0
    print(maze_grid)
    #print(maze_grid[6])
    maze_start_end = mazeSE(maze)
    #print(maze_start_end[0])
    #print(maze_start_end[1])
    return maze_grid

# print(g)
# print(g.grid)
