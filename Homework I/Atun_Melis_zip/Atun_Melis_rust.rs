fn main() {
    let my_array:[i32;5] = [1, 2, 3, 4, 5]; //myArray has a length of 5 and consists of //32 bit integers
    println!("Array is: {} ", my_array[0]);
    let my_array2:[i32;3] = [0;3]; //arrays can also be declared like this
    println!("My other array is: {} ", my_array2[0]);
    let mut my_array3:[i32;2] = [7, 8]; //content of mutable arrays cannot be //changed
    println!("Mutable array is: {} ", my_array3[0]);
    my_array3[1] = 9; //this line is allowed, it will change the second index //of mutable array
    //myMutableArray[3] = 12; //this line gives an error because mutable array has a //length of 2, therefore trying to reach the 3rd index gives an error
    //checkArr[0]; //this gives an error because checkArr is not yer declared
    let mut my_array4:[i32;3] = [9, 8, 7];
    my_array4[2] = 6; //this line executes without errors because checkArr has been //declared above
    //multidimensional arrays
    let mut my_array5 = [[0u8; 3]; 4];
    my_array5[0][1] = 6;
    println!("Multidimensional array is: {} ", my_array5[0][1]);

    let _: [u8; 3] = [1, 2, 3];
    let _: [&str; 3] = ["1", "2", "3"];
    let _: [String; 3] = [
        String::from("1"),
        String::from("2"),
        String::from("3")
    ];

    let var1 = 2;
    let var2 = 4;
    let mut result:i32;
    result = var1 + var2;
    println!("Sum is: {} ", result);
    result = var1 - var2;
    println!("Substraction is: {} ", result);
    result = var1 * var2;
    println!("Multiplication is: {} ", result);
    result = var1 / var2;
    println!("Division is: {} ", result);
    result = var1 % var2;
    println!("Remainder is: {} ", result);
    let m = 7;
    let k = 8;
    if (m < k) && (k > m) {
	       println!("True example.");
       }
       let my_boolean = false;
       if !my_boolean {
	          println!("True example again.");
          }
              if (m > 7) || (k > 7) {
	             println!("True example again.");
             }

    let a:i32 = 0;
    let b:i32 = 1;
    let mut c:i32;
    c = a & b;
    println!("1st result is: {} ", c);
    c = a | b;
    println!("2nd result is: {} ", c);
    c = a ^ b;
    println!("3rd result is: {} ", c);
    c = !b;
    println!("4th result is: {} ", c);
    c = a << b;
    println!("5th result is: {} ", c);
    c = a >> b;
    println!("Last result is: {} ", c);
    let mut i = 8;
    i += 4;
    println!("i is: {} ", i);
    i -= 2;
    println!("i is: {} ", i);
    i *= 4;
    println!("i is: {} ", i);
    i /= 2;
    println!("i is: {} ", i);
    i %= 10;
    println!("i is: {} ", i);
    i &= 2;
    println!("i is: {} ", i);
    i |= 1;
    println!("i is: {} ", i);
    i ^= 2;
    println!("i is: {} ", i);
    i <<= 1;
    println!("i is: {} ", i);
    i >>= 1;
    println!("i is: {} ", i);
}
