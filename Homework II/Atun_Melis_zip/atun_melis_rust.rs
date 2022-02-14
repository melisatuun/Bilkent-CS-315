fn main() {
	fn function_name() -> bool {
	println!("If this is printed, then no short circuit.");
	true 
	}
	let a: bool = true;
	let b: bool = false;
	println!("First result is: {} ", a == b); //false
	println!("Second result is: {} ", a | b); //true
	println!("Third result is: {} ", a & b); //false
	let c = 4;
	let d = 5;
	println!("Fourth result is: {} ", d > c); //true

	let x = true || false;
	let y = true && false;
	let z = false || true;
	let k = false && true;
	println!("1st result is: {} ", x); //true
	println!("2nd result is: {} ", y); //false
	println!("3rd result is: {} ", z); //true
	println!("4th result is: {} ", k); //false

	let m = 50;
	let i = 80;
	let my_bool = m < 40 && i > 70;
	println!("Result 1: {} ", my_bool); //false
	let my_bool2 = m > 40 && i < 70; 
	println!("Result 2: {} ", my_bool2); //false
	let my_bool3 = m < 40 || i > 70;
	println!("Result 3: {} ", my_bool3); //true
	let my_bool4 = m > 40 || i < 70;
	println!("Result 4: {} ", my_bool4); //true

	let my_array = ["melis", "atun", "CS 315", "homework"];
	let mut my_number = 0;
	while my_number < 4 && my_array[my_number] != "homework" {
		println!("Array: {} ", my_array[my_number]);
		my_number += 1;
	}

	let my_father = false && function_name(); //function will not be called and executed because first operand is false
	println!("Result: {} ", my_father); //false
	let my_mother = true || function_name(); //function will not be called and executed again because the first operand is true
	println!("Result: {} ", my_mother); //true
}
