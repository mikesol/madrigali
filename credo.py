# -*- coding: latin-1 -*-

THRESHHOLD = 0.8
FIRSTCREDO = 104
SECONDCREDO = 56

import random
from interval import interval, inf, imath
import sys

THREES = ['X16. ', 'X16. ', 'X16 ~ X32', 'X32 ~ X16']
FOURS = ['X8 ', 'X16. ~ X32', 'X16 ~ X16', 'X32 ~ X16.']
FIVES = ['X8 ~ X32', 'X16. ~ X16', 'X16 ~ X16.', 'X32 ~ X8']
SIXES = ['X8 ~ X16', 'X16. ~ X16.', 'X16 ~ X8', 'X32 ~ X8 ~ X32']
SEVENS = ['X8 ~ X16.', 'X16. ~ X8', 'X16 ~ X8 ~ X32', 'X32 ~ X8 ~ X16']

IHEARTTYPESETTING = [
['X32 ' for x in range(16)],
['X16 ' if x % 2 == 0 else 'X32 ~ X32' for x in range(15)],
[THREES[x % 4] for x in range(14)],
[FOURS[x % 4] for x in range(13)],
[FIVES[x % 4] for x in range(12)],
[SIXES[x % 4] for x in range(11)],
[SEVENS[x % 4] for x in range(10)],
['X4 ','X16. ~ X8 ~ X32','X16 ~ X8 ~ X16', 'X32 ~ X8 ~ X16.','X8 ~ X8','X16. ~ X8 ~ X32','X16 ~ X8 ~ X16', 'X32 ~ X8 ~ X16.','X4 '],
['X4 ~ X32','X16. ~ X8 ~ X16','X16 ~ X8 ~ X16.', 'X32 ~ X8 ~ X8','X8 ~ X8 ~ X32','X16. ~ X8 ~ X16','X16 ~ X8 ~ X16.', 'X32 ~ X4'],
['X4 ~ X16','X16. ~ X8 ~ X16.','X16 ~ X8 ~ X8', 'X32 ~ X8 ~ X8 ~ X32','X8 ~ X8 ~ X16','X16. ~ X8 ~ X16.','X16 ~ X4'],
['X4 ~ X16.','X16. ~ X8 ~ X8','X16 ~ X8 ~ X8 ~ X32', 'X32 ~ X8 ~ X8 ~ X16','X8 ~ X8 ~ X16.','X16. ~ X4'],
['X4. ','X16. ~ X8 ~ X8 ~ X32','X16 ~ X8 ~ X8 ~ X16', 'X32 ~ X8 ~ X8 ~ X16.','X8 ~ X4'],
['X4. ~ X32','X16. ~ X8 ~ X8 ~ X16','X16 ~ X8 ~ X8 ~ X16.', 'X32 ~ X8 ~ X4'],
['X4.. ','X16. ~ X8 ~ X8 ~ X16.','X16 ~ X8 ~ X4'],
['X4... ','X16. ~ X8 ~ X4'],
['X2 ']
]

LYRICS = ['Cre --', 'do', 'in', 'u --', 'num', 'De --', 'um,',
  'Pa --', 'trem', 'om --', 'ni --', 'po --', 'ten --', 'tem,',
  'fac --', 'to --', 'rem', 'cæ --', 'li', 'et', 'ter --', 'ræ,',
  'vi --', 'si --', 'bi --', 'li --', 'um', 'om --', 'ni --', 'um', 'et',  'in --', 'vi --', 'si --', 'bi --', 'li --', 'um.',
  'Et', 'in', 'u --', 'num', 'Do --', 'mi --', 'num', 'IE --', 'SUM', 'CHRIS --', 'TUM,', 'Fi --', 'li --', 'um',
  'De --', 'i', 'un --', 'i --', 'gen --', 'i --', 'tum.',
  'Et', 'ex', 'Pa --', 'tre', 'na --', 'tum', 'an --', 'te', 'om --', 'ni --', 'a', 'sæ --', 'cu --', 'la.',
  'De --', 'um', 'de', 'De --', 'o,', 'lu --', 'men', 'de', 'lu --', 'mi --', 'ne,', 'De --', 'um', 've --', 'rum', 'de', 'De --', 'o' 've --', 'ro.',
  'Ge --', 'ni --', 'tum,', 'non', 'fac --', 'tum,' 'con --', 'sub --', 'stan --', 'ti --', 'a --', 'lem', 'Pa --', 'tri:', 'per', 'quem', 'om --', 'ni --', 'a', 'fac --', 'ta', 'sunt.'
]
#Qui propter nos homines, et propter nostram salutem decendit de caelis.
#Et incarnatus est de Spiritu sancto ex Maria Virgine : Et homo factus est.
#Crucifixus etiam pro nobis : sub Pontio Pilato passus, et sepultus est.
#Et resurrexit tertia die, secundum Scripturas.
#Et ascendit in caelum : sedet ad dexteram Patris.
#Et iterum venturus est cum gloria, judicare vivos et mortuos : cujus regni non erit finis.
#Et in Spiritum sanctum, Dominum, et vivificantem : qui ex Patre Filioque procedit.
#Qui cum Patre et Filio simul adoratur, et conglorificatur : qui locutus est per Prophetas.
#Et unam, sanctam, catholicam, et apostolicam Ecclesiam.
#Confiteor unum baptisma in remissionem peccatorum.
#Et expecto resurrectionem mortuorum. Et vitam venturi saeculi.

class Voice(object) :
  def __init__(self, pitch) :
    self.pitch = pitch
    self.events = []
    self.dynmap = {}
  def typeset(self) :
    '''
    an event comes along.  it asks, sees the has, and gets the correct position
    '''
    if len(self.events) == 0 :
      print "%%% DANGER, EMPTY!!"
      return ''
    HAS = 16
    fullevents = self.events[:]
    out = []
    TOTAL = 0
    for event in fullevents :
      NEEDS = event[2] - event[1]
      ORIG = event[1]
      eventar = []
      while NEEDS > 0 :
        if HAS == 0 :
          HAS = 16
          #eventar.append('\n')
        gets = min(NEEDS,HAS)
        eventar.append(IHEARTTYPESETTING[gets - 1][TOTAL % 16])
        NEEDS -= gets
        HAS -= gets
        TOTAL += gets
      out.append('~'.join(eventar))
    out = ' '.join(out)
    out = out.replace('X',self.pitch)
    return out

TOTAL = 0
voice = Voice("bes")
while TOTAL < FIRSTCREDO :
  n = 1 if random.random() < THRESHHOLD else random.randint(3,16)
  if TOTAL + n >= FIRSTCREDO :
    n = FIRSTCREDO - TOTAL
  voice.events.append((1,TOTAL, TOTAL+n))
  TOTAL += n

print voice.typeset()
print "%%%%%%%%%"
FIRSTPASS = len(voice.events)
print ' '.join(LYRICS[:FIRSTPASS])
print "%%%%%%%%%"

TOTAL = 0
voice = Voice("bes")
while TOTAL < SECONDCREDO :
  n = 1 if random.random() < 0.9 else random.randint(3,16)
  if TOTAL + n >= SECONDCREDO :
    n = SECONDCREDO - TOTAL
  voice.events.append((1,TOTAL, TOTAL+n))
  TOTAL += n

print voice.typeset()
print "%%%%%%%%%"
print ' '.join(LYRICS[FIRSTPASS:FIRSTPASS+len(voice.events)])