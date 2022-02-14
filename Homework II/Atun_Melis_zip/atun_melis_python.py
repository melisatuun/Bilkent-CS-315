a = 3
b = 4
if b > a:
	print("True.")
else:
	print("False.")
print(bool(b)) #true

x = 8
y = 9
if y > x and y < 10:
  print("True!")
if y < x or y < 10:
  print("True again!")
if not x:
  print("Not x.")

num = 88
myNum = num < 80 and num > 70
print(myNum) #false
myOtherNum = 100
myNum = num < 200 or num > 300
print(myNum) #true
def functionName():
	return False
myBool = False and functionName()
print(myBool) #false
myBool2 = True or functionName()
print(myBool2) #true
myBool3 = False or functionName()
print(myBool3) #false
myBool4 = True and functionName()
print(myBool4) #false

myArray = ["melis", "atun", "CS 315", "homework"];
myNumber = 0;
while ((myNumber < 4) and (myArray[myNumber]) != "homework"):
	print(myArray[myNumber]);
	myNumber = myNumber + 1;

myFather = False and functionName(); #function will not be called and executed because first operand is false
print(myFather); #false
myMother = True or functionName(); #function will not be called and executed again because the first operand is true
print(myMother); #true
