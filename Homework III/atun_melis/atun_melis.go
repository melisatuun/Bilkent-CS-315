package main

import "fmt"

type Person struct {
	firstName string
	surname   string
}

type Person2 struct {
	firstName string
	surname   string
}

func changeValue(myMother Person) {
	myMother.firstName = "Cigdem"
}

func changePointer(myFather *Person2) {
	myFather.firstName = "Ata"
}

func main() {
	fmt.Println("Hello, world!")

	func(melis string) {
		fmt.Println("Hi", melis, "I'm a function.")
	}("Melis")

	//func(melis string) is assigned to the variable funcVar in order to be called
	funcVar := func(melis string) {
		fmt.Println("Hi", melis, "I'm a function assigned to a variable.")
	}
	funcVar("Melis")

	//output: "Hi melis I'm a function."

	//local variables cannot be seen by the functions outside of the function that they have been declared
	//global variables can be seen from everywhere
	var myAge int = 21
	var myFavNum int = 8

	fmt.Printf("My age is %d\n", myAge)
	fmt.Printf("My favorite number is %d\n", myFavNum)

	//output: My age is 21
	//My favorite number is 8

	//first declare a variable
	melis := 0

	//assign a function to the variable
	myFunc := func() int {
		melis += 1
		return melis
	}

	fmt.Println(myFunc())
	fmt.Println(myFunc())

	//output: 1
	//2

	//pass by value example
	//although the function changeValue above changes the name of the person, there is no change on the name
	//this is because the changeValue function only changes the copy of the name, not the name itself
	person := Person{
		firstName: "Melis",
		surname:   "Atun",
	}

	person2 := Person2{
		firstName: "Melis",
		surname:   "Atun",
	}

	changeValue(person)
	fmt.Println(person)

	//output: {Melis Atun}

	changePointer(&person2)
	fmt.Println(person2)

	//output: {Ata Atun}
}
