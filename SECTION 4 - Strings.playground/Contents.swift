//: Playground - Strings (More info in http://blog.udacity.com/2015/03/learn-swift-tutorial-fundamentals.html)
//https://oleb.net/blog/2016/08/swift-3-strings/

var name: String = "Anartz Mugika Ledo"

name.uppercased()

name.lowercased()

var idUser = ""

idUser = "182734739293333"


//Video: 32 - Exercise

var favouriteFood:String = "Ensalada"

var petName: String

petName = "Gato"


//#1: Declare multiple variables on a single line with commas.
var one_value = true, two_value = false

//#2: Access the emoji keyboard using ctrl + cmd + spacebar!

var show_emoji:String = "😂😅"

var 🐷 = "🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷"

🐷

var 🏀:String = "I love 🏀"

var 😅 = "😂 ...."

😅

//Ejercicios con Emojis Section 4, Lecture 34 -> Crea una variable de tipo string y nómbrala con un emoji. Asígnale cualquier valor
var 🏖 = "Me gusta la playa"

print(🏖)

let s = "abcdef"

let charsCount = s.characters.count
// Advance 5 from the start (only show one char)
let idx = s.index(s.startIndex, offsetBy: charsCount-1) // To show only last position
let idx_ = s.index(s.startIndex, offsetBy: 4) // To shos only last position
s[idx] // → "f" (the Character, not the String)
s[idx_]

for index in 1...5  {
    print("\(index) times 5 is \(index * 5)")
}

var i = 0;
var check : Bool = false
repeat {
    print("\(i) times 5 is \(i * 5)")
    i += 1
    if i == 2
    {
        check = true
    }
    
} while i < 5 && check == false