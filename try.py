import sys
from socket import *


_server = 'localhost'
_port = 4014

sockobj = socket(AF_INET, SOCK_STREAM)
sockobj.connect((_server, _port))

sockobj.send(bytes('(L / |GreaterThanComparison| :LEX BE :TENSE PAST :EXCEED-Q EXCEED :|domain|  (M / |OneOrTwoDTime| :LEX MONTH :DETERMINER THE) :|standard|  (A / |GUMThing| :LEX AVERAGE :DETERMINER ZERO) :|range|  (C / |SenseANDMeasureQuality| :LEX WARM))\r\n', 'UTF-8'))
data = sockobj.recv(1024)
print('Client received: {}'.format(data))

sockobj.close()
