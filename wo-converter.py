ifi = file('waldOz.ly','r')
t = ifi.read().split('\n')
ifi.close()
for x in t :
  print '} ' + x +' {' if '\\key' in x else x

  