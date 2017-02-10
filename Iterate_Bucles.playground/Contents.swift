//: Playground - Iterate and bucles

//Para usar el framework Foundation
import Foundation

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

/********************************************************************
 Ejercicios de bucle for
 Sección 15, Clase 150
 Crea un bucle for que vaya de 1 a 100 y, en cada iteración imprima 'Voy por la iteración xx'
 Crea un bucle for que vaya de 100 a 1 y en cada iteración imprima 'Tengo todavía xx cervezas en la despensa'
 Crea un bucle que imprima las 10 primeras potencias de 2 (2, 4, 8, 16, 32...)
 *****************************************************************/

print("***************************************")

//Crea un bucle for que vaya de 1 a 100 y, en cada iteración imprima 'Voy por la iteración xx'

for var i in 1...100
{
    print("Voy por la iteracción: \(i)")

}

print("***************************************")
//Crea un bucle for que vaya de 100 a 1 y en cada iteración imprima 'Tengo todavía xx cervezas en la despensa'
for var i in (1...100).reversed()
{
    print("Tengo todavía \(i) cervezas en la despensa")
}

//Crea un bucle que imprima las 10 primeras potencias de 2 (2, 4, 8, 16, 32...)
print("***************************************")
print("Las 10 primeras potencias de 2 son: ")
for var i in 1...10
{
    print("2^\(i)= \(pow(2,i))")
}



//SECTION 15 LECTURE 151 While bucle

//De más a menos (descontar) con un break para dejar de mostrar
for var i in (1...10).reversed() //de 1 a 10 (incluido)
{
    print("La variable i vale: \(i)")
    
    if i == 4
    {
        break
    }
}

print("***************************************")

//While example

var i = 0

var found = false

while !found
{
    i = i + 1
    
    if i % 5 == 0 && i % 7 == 0 && i > 7
    {
        found = true
        print("\(i) es multiplo de 7 y de 5")
    }
}