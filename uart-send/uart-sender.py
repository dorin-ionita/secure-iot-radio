import serial
import time

ser = None

def sendData(data):
    data += "\r\n"
    ser.write(data.encode())

def main():
    global ser
    ser = serial.Serial('/dev/ttyUSB0', 9600)
    data = "dorin-is-cool"
    while 1:
        #misc code here
        sendData(data)
        time.sleep(10)

main()
