<?php

$string = 'abcdef';
echo $string[0];
echo $string[1];
echo $string[2];
echo $string[3];
echo $string[4];
echo $string[5];
$n = "\n";
echo $n;
//echo $string[7]; //this gives an error because string abcdef has only 6 letters, so //trying to reach the 7th one gives an error
//$melis[2]; //this gives an error because string melis is not yet declared
$melis = 'melis';
//multidimensional array
$myArray = array (
  array("Melis", 27, 10),
  array("Cagan", 16, 11),
  array("Ata", 28, 12),
  array("Cigdem", 13, 14)
);

class myFlowers
{
    function blossom()
    {
        echo "You are a flower!";
        $n = "\n";
        echo $n;
    }
}
$flower = new myFlowers;
$flower->blossom();


$myName = substr("melis", 0, -1);
echo $myName;
$n = "\n";
echo $n;
$myName = substr("melis", 2, -1);
echo $myName;
$n = "\n";
echo $n;

$m = 2;
$k = 3;
echo $m + $k;
$n = "\n";
echo $n;
echo $m - $k;
$n = "\n";
echo $n;
echo $m * $k;
$n = "\n";
echo $n;
echo $m ** $k;
$n = "\n";
echo $n;
$y = 10;
$z = 2;
echo $y / $z;
$n = "\n";
echo $n;
echo $y % $z;
$n = "\n";
echo $n;
$var1 = 10;
$var2 = 10;
var_dump($var1 == $var2); //true
$n = "\n";
echo $n;
var_dump($var1 != $var2); //false
$n = "\n";
echo $n;
$var3 = '30';
var_dump($var1 === $var3); //false
$n = "\n";
echo $n;
var_dump($var3 > $var2); //true
$n = "\n";
echo $n;
var_dump($var1 < $var2); //false
$n = "\n";
echo $n;
var_dump($var1 >= $var2); //true
$n = "\n";
echo $n;
var_dump($var1 <= $var2); //true
$n = "\n";
echo $n;
$a = 1;
$a++;
print_r($a);
$n = "\n";
echo $n;
$a--;
print_r($a);
$n = "\n";
echo $n;
$b = 3;
++$b;
print_r($b);
$n = "\n";
echo $n;
--$b;
print_r($b);
$n = "\n";
echo $n;
$c = true && false;
var_dump($c);
$n = "\n";
echo $n;
$d = true || false;
var_dump($d);
$n = "\n";
echo $n;
$e = 30;
$f = 40;
if ($a and $b) {
	echo "This is a test";
  $n = "\n";
  echo $n;
}
if ($a or $b) {
	echo "This is another test";
  $n = "\n";
  echo $n;
}
if (!$a) {
	echo "This is again a test";
  $n = "\n";
  echo $n;
}
$melo = array("g" => "galatasaray", "a" => "altay");
$pasta = array("f" => "fenerbahce", "t" => "trabzonspor", "b" => "besiktas");
$cake = $melo + $pasta;
echo "Union of \$pasta and \$cake is: ";
var_dump($cake);
$n = "\n";
echo $n;
var_dump($pasta == $cake); //false
$n = "\n";
echo $n;
var_dump($pasta === $cake); //false
$n = "\n";
echo $n;
var_dump($pasta != $cake); //true
$n = "\n";
echo $n;
var_dump($pasta !== $cake); //true
$n = "\n";
echo $n;
$name1 = "Beautiful";
$name2 = " ";
$name3 = "Melis";
$result = $name1 . $name2 . $name3;
echo $result;
$n = "\n";
echo $n;
$myVar1 = 10;
$myVar2 = 20;
$myVar3 = ($myVar1 > $myVar2 ) ? $myVar1 :$myVar2;
echo "Value of result is: $myVar3";
$n = "\n";
echo $n;
$myVar3 = ($myVar1 < $myVar2 ) ? $myVar1 :$myVar2;
echo "Value of result is: $myVar3";
$n = "\n";
echo $n;

?>
