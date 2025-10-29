#<SKCON9><USB><ProgramA>

import threading
import time
import libstarpy

robot = Robot()
global z,a,b,c
def qrcode():
    result = robot.start_qr_identify(robot.clamp(10, 3, 30))
    z,a,b,c = int(result[0]),int(result[1]),int(result[2]),int(result[3])
    robot.print(z)
    robot.print(a)
    robot.print(b)
    robot.print(c)

def main():
    qrcode()
main()