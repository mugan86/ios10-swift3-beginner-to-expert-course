//: Playground - Iterate and bucles

//SECTION 15 LECTURE 149

//De menos a más
for var i in 1...10 //de 1 a 10 (incluido)
{
    print("La variable i vale: \(i)")
}
print("***************************************")
for var j in 0..<10
{
    print("La variable j vale: \(j)")
}
print("***************************************")

for var i in 0..<10
{
    print("\(i) elevado a 2 = \(i*i)")
}

print("***************************************")

//De más a menos (descontar)
for var i in (1...10).reversed() //de 1 a 10 (incluido)
{
    print("La variable i vale: \(i)")
}
