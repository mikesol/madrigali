bass = open('formatbass.ly')
TIMES = {'3/4':'s2.','3/8':'s4.','2/4':'s2','5/8':'s1*5/8','4/4':'s1'}

NOWTIME = '3/4'

bass = [x[:-1] for x in bass]
bass = [x.split(' ') for x in bass]

for x in bass :
  while 1 :
    try : x.remove('')
    except : break

marks = []
n = 1
for x in bass :
  if 'time' in x[0] :
    NOWTIME = x[1]
    marks.append(x)
  else :
    n += 1
    marks.append([TIMES[NOWTIME], '\\barNumberCheck #{0}'.format(n)])

marks = ['  '+(' '.join(x)) for x in marks]
for x in marks : print x
