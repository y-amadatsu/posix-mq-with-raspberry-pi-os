# -*- coding: utf-8 -*-
import time
import posix_ipc
import json

def main () :
    mq = posix_ipc.MessageQueue("/whatever", posix_ipc.O_CREAT)
    while True:
        data = mq.receive()
        j = json.loads(data[0]) # ->  (message, priority)のタプルで戻ってくる
        print j
        if j.get('message') == "end":
            break

if __name__ == "__main__" : 
    main()