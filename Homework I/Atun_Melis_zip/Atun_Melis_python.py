import numpy as np #this must be included in order to use arrays in python

myName = "Melis"
print(myName[0])
print(myName[1]);
print(myName[2])
print(myName[3])
print(myName[4])

#print(myName[5]) #this gives an error because the string myName is composed of
 		            #only 4 letters, trying to reach the 5th one therefore gives an 		           #error.
#myFather[0] #this gives an error because myFather is not yet declared
myFather = "Ata"
print(myFather[0]) #because myFather is declared above, this line will 			                       #execute without errors
#multidimensional array
x = np.array([[9, 8, 7], [6, 5, 4]])
print(x.shape)
print(x[1, 2])
#jagged array
Bilkent = {"Classes":["CS315", "CS319"], "Sports":["Tennis", "Basketball"]};
myArray = np.empty(5, dtype=object)
print(myArray)

class myClass:
	def __init__(self, a_melis, b_melis, c_mother, c_father):
		self.a = a_melis
		self.b = b_melis
		self.mother = c_mother
		self.father = c_father

myMother = "Cigdem"
print(myMother[0:3]) #this will take the string from 0th index till second index
print(myMother[1:3])  #this will take the string from first index till second 			                  #index
print(myMother[0:4]) #this will take the string from first index till 3rd index
print(myMother[1:5]) #this will take the string from first index till 4th index
print(myMother[2:4]) #this will take the string from second index till second 		                           #index
print(myMother[3:5]) #this will take the string from 3rd index till 4th index
m = 3
n = 4
k = m + n
print(k)

l = 5
i = 8
o = i - l
print(o)

e = 10
w = 5
y = e / w #result is division (float)
z = e // w #result is floor
g = e * w
v = e ** w #power
j = e % w #remainder
print(y)
print(z)
print(g)
print(v)
print(j)
melis = 5
melis *= 4
print(melis) #output is 20
melis -= 5
print (melis) #output is 0
computer = 1
glass = 2
print(computer < glass) #true
print(computer >= glass) #false
print(computer != glass) #true
al = True;
bal = False;
print(al and bal) #output is false
print(al or bal) #output is true
print(not al) #output is false
mel = 30
isa = 20
ays = mel
print(mel is not isa) #true
print(mel is ays) #true
x = 24
y = 30
z = 23
list = [24, 30, 23, 45]
if (x not in list):
	print("False alarm!")
else:
	print("Correct!")
cable = 45
chart = 20
print(cable & chart)
print(cable | chart)
print(~cable)
print(cable ^ chart)
print(cable >> 2)
print(cable << 2)
