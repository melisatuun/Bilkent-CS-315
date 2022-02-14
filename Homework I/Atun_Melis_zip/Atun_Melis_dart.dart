void main() {
var melis = const [];
final flower = const [];
melis = [8, 8, 8];
var tree = [];
tree = [42];
var butterfly = [12];
//print(butterfly[13]);

var blossom = const [];
blossom = [1, 2, 3, 4, 5, 6, 7, 8, 9];

int myNum = 25;
//multidimensional arrays
int row = 2;
int col = 4;
var myList = List.generate(row, (i) => List.filled(col, i));
myList[0][1] = myNum;
print(myList);
//ragged arrays
var matrix = List.generate(4, (_) => List.filled(4, 0));
print(matrix);

//a list of integer objects
List<int> thisList = List.filled(1, 0, growable: true);
int deneme = 8;
thisList[0] = deneme;
print(thisList);

//substring() method will take the string from the 3rd index
String myString = "123456789";
myString = myString.substring(3);
print(myString);

assert(1 + 2 == 3);
assert(8 - 3 == 5);
assert(2 - 4 == -2);
assert(2 * 2 == 4);
assert(9 / 2 == 4.5); //returns a double
assert(9 ~/ 2 == 4); //returns an integer
assert(5 % 4 == 1); //returns remainder

int c = 2;
++c;
int m = 8;
--m;
print(c);
print(m);

int n = 3;
n++;
int i = 4;
i--;
print(n);
print(i);

var flag = 5;
var map = 4;
if (map < flag) {
	print(map);
}
var table = 5;
table *= 3;
assert(table == 15);
print(table);

var sky = 8;
sky %= 3;
assert(sky == 2);
print(sky);

var ocean = 4;
ocean += 1;
assert(ocean == 5);
print(ocean);

double wind = 10;
wind /= 5;
assert(wind == 2.0);
print(wind);

var daisy = 5;
daisy -= 5;
assert(daisy == 0);
print(daisy);

var water = 9;
water ~/= 4;
print(water);

final smoothie = 0x12;
final oatmeal = 0x0a;
assert((smoothie & oatmeal) == 0x01);
assert((smoothie & ~oatmeal) == 0x03);
assert((smoothie | oatmeal) == 0x0b);
assert((smoothie ^ oatmeal) == 0x0c);
assert((smoothie << 4) == 0x120);
assert((smoothie >> 4) == 0x02);
print(smoothie);
print(oatmeal);
}
