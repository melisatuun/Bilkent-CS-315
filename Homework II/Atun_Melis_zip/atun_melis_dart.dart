void main() {
	bool melis = 2 > 1;
	print(melis); //true
	bool boolean = 1 > 3;
	print(boolean); //false
	bool myName = true;
	if (myName) {
		print("Your name is Melis.");
	}
	else {
		print("You have no name.");
	}

	var m = 2;
	var k = 4;
	var test = (m < k) && (k > m);
	print(test); //true
	var i = 10;
	var j = 50;
	var myNum = (j > 60) || (i > 60);
	print(myNum); //false
	var myOtherNum = (j > i) || (i > j);
	print(myOtherNum); //true

	var melo = 80;
	var testing = (melo > 120) && (melo < 100);
	print(testing);
	var myNo = 78;
	var testNo = (myNo > 80) && (myNo < 90);
	print(testNo);

	var myFavNum = 8;
	var secondTesting = (myFavNum > 5) || (myFavNum < 3);
	print(secondTesting);
	var thirdTesting = (myFavNum < 5) || (myFavNum > 4);
	print(thirdTesting);
	bool functionName() {
		print("Testing function...");
		return true;
	}
	print((myFavNum < 5) || functionName());
	print((myFavNum > 4) && functionName());
	print((myFavNum > 4) || functionName());
	print((myFavNum < 5) && functionName());
	print((myFavNum < 12) && (myFavNum < 4));

	var myArray = [0, 3, "CS 315" , "homework"];
	var myNumber = 0;
	while (myNumber < 4 && myArray[myNumber] != "homework") {
		print(myArray[myNumber]);
		myNumber++;
	}

	var myFather = false && functionName(); //function will not be called and executed because first operand is false
	print(myFather);
	var myMother = true || functionName(); //function will not be called and executed again because the first operand is true
	print(myMother);
}
