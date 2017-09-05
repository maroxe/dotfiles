import zmq
import random
import sys
import time


class Server:
    def __init__(self, port=5556, topic=9999):
        self.topic = topic
        self.context = zmq.Context()
        self.socket = self.context.socket(zmq.PUB)
        self.socket.bind("tcp://*:%d" % port)

    def run(self):
        pass

    
    def send(self, msg):
        print(msg)
        self.socket.send_string("%d %s" % (self.topic, msg))

