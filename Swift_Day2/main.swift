//
//  main.swift
//  array topic
//
//  Created by MacStudent on 2019-10-09.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

let text = "aabbbccccddddd"

//var anArray : [String]
var anArray:[String] = []

//To add a new element to the end of an Array.

anArray.append("This String")
//To append a different Array to the end of your Array.

anArray += ["Moar", "Strings"]
anArray.append(contentsOf: ["Moar", "Strings"])
//To insert a new element into your Array.

anArray.insert("This String", at: 0)
//To insert the contents of a different Array into your Array.

anArray.insert(contentsOf: ["Moar", "Strings"], at: 0)

for i in 1...10{
   // anArray.append("This String")
    anArray.append("Hello JavaTpoint \(i)")
}

for item in anArray{
    print("Found \(item)")
}

//repeat the same array
let arrWithRepeatingValues = Array(repeating: "sanjeev", count: 5)
print(arrWithRepeatingValues)


var array3D: [[[Int]]] = [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]

/*
 Swift Dictionary
 A Swift dictionary is a simple container that can contain multiple data as key-value pair in an unordered way.
 
 Swift dictionary is used instead of array when you want to look up value with some identifier in the collection. Suppose, we have to search the capital city of country. In this case, we will create a dictionary with key country and value capital city. Now, you get the capital city from the collection by searching with the key country. Here, we have paired a country to its capital city.
 
 */

//Example:
let emptyDictionary:[Int:String] = [:]
print(emptyDictionary)
//Or

let emptyDictionarynew:Dictionary<Int, String> = [:]
print(emptyDictionarynew)
//Output:
//[:]
//Declaring a dictionary with some values
var valDictionary = ["a":10, "b":20, "c":30, "d":40, "e":50, "f":60, "g":70, "h":80, "i":90]

valDictionary["a"] = 100
valDictionary.updateValue(500, forKey : "z")
//valDictionary.remove(forKey: "e")

if let idx = valDictionary.index(forKey: "e") {
    valDictionary.remove(at: idx)
    print(valDictionary) // ["baz": 3, "foo": 1]
}
print(valDictionary)
//print(valDictionary[0]) we cant print the value according to index because we are dealing in the form of key value pair
print(valDictionary["c"])


for (key,value) in valDictionary {
    print("key:\(key) value:\(value)")
}


//functions in swift
func moveForward(piece: String, steps: Int)
{
    print("Moving the \(piece) piece \(steps) steps forward...")
}
moveForward(piece: "Queen", steps: 3)

// _ is used so that we can pass the value directly instaed of giving the refrence like we provided in previous function
func moveForwards(_ piece: String, _ steps: Int)
{
    print("Moving the \(piece) piece \(steps) steps forward...")
}
moveForwards("Queen", 3)

//returntype function in swift
func demoreturn (x : String)->String
{
    return x
}

demoreturn(x: "sanjeev")

//function n number parameter
func demo (x : String...)
{
    print(x)
}
demo(x: "sanjeev","desmond", "azeo")

//initialize the class
var objectone = Modetwo()
objectone.name = "sanjeev"
objectone.address = "41 toronto"
objectone.code = 123

//creating multiple objects
var objecttwo = Modetwo()
objecttwo.name = "desmond"
objecttwo.address = "paris"
objecttwo.code = 007

//costum arraylist calling
var costumArray:[Modetwo] = []

var costumarray = [Modetwo]()
costumArray.append(objectone)
costumArray.append(objecttwo)

//printing values using the loop
for item in costumArray{
    print("Found \(item)")
    print("Found \(costumArray[0].name)")
    break
}

//print using the loop from 0 to size of array
for i in 0...costumArray.count
{
    print("Found \(i)")
    print("Found \(costumArray[0].name)")
    break
}

