<?php
	$melo = true;
	$melis = false;
	var_dump($melo); //true
	$n = "\n";
	echo $n;
	var_dump($melis); //false
	$n = "\n";
	echo $n;
	$myBool = 0;
	var_dump($myBool); //0
	$n = "\n";
	echo $n;
	$try = (5 > 4);
	var_dump($try); //true
	$n = "\n";
	echo $n;

	function functionName() {
		echo ("Trying boolean values...");
		$n = "\n";
		echo $n;
		return true;
	}
	if (false && functionName()) {
		echo ("Result is...");
		$n = "\n";
		echo $n;
	}
	$myNumber = true;
	$myString = $myNumber && (functionName() || true) ? 'True' : 'False';
	var_dump($myString);
	$n = "\n";
	echo $n;
	$myNum = false or true;
	var_dump($myNum); //false
	$n = "\n";
	echo $n;
	$myOtherNum = false and true;
	var_dump($myOtherNum); //false
	$n = "\n";
	echo $n;

	$myFavNum = 8;
	$tryNum = ($myFavNum < 100 && $myFavNum < 7);
	var_dump($tryNum); //false
	$n = "\n";
	echo $n;
	$tryOtherNum = ($myFavNum > 100 && $myFavNum > 7);
	var_dump($tryNum); //false
	$n = "\n";
	echo $n;

	$myMelis = ($myFavNum < 100 || $myFavNum > 7);
	var_dump($myMelis); //true
	$n = "\n";
	echo $n;
	$myNumber = ($myFavNum > 100 || $myFavNum > 7);
	var_dump($myNumber); //true
	$n = "\n";
	echo $n;

	$myArray = ["melis", "atun", "CS 315", "homework"];
	$myNumber = 0;
	while (($myNumber < 4) && ($myArray[$myNumber]) != "homework") {
		echo($myArray[$myNumber]);
		$myNumber = $myNumber + 1;
		$n = "\n";
		echo $n;
	}

	$myFather = false && functionName(); //function will not be called and executed because first operand is false
	var_dump($myFather); //false
	$n = "\n";
	echo $n;
	$myMother = true || functionName(); //function will not be called and executed again because the first operand is true
	var_dump($myMother); //true
	$n = "\n";
	echo $n;
?>
