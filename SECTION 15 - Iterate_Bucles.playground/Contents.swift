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

/*************************************************************************************
 Ejercicios de bucle while
 Sección 15, Clase 152
 Se dice que un número x es divisible por otro número y cuando el resto de la división de x entre y da cero, es decir x es divisible por y si x%y==0.
 
 Crea un programa que declare una variable entera requerida x.
 Crea una segunda variable entera requerida y e iníciala en 2
 Cree una variable booleana esDivisible que inicialmente sea falsa
 Haz un bucle while que se ejecute mientras y sea menor estricto que x y a la vez no hayamos encontrado ningún divisor de x. En el cuerpo del bucle agrega una condición que cambie la variable esDivisible a true si x%y==0. No te olvides de incrementar y en una unidad para que el bucle pueda terminar
 Al final, ya fuera del bucle imprime un mensaje indicando si x tiene o no tiene divisores e indica cuales son esos.
 Ahora que lo has hecho por consola, crea una pequeña interfaz gráfica donde el usuario introduzca ese número x desde un textfield y la app le muestre en una label si el número tiene o no tiene divisores.
 Por cierto, si un número no tiene divisores, se dice que el número es primo. Puedes ponerlo en tu app con un print o un mensaje adicional =)
 
 NUMERO PRIMO!!!
 *************************************************************************************/

var x = 16
var y = 2

var isDivisible = false

var divisores : [Int] = []



while x > y
{
    if x % y == 0
    {
        isDivisible = true
        divisores.append(y)
    }
    y += 1
}

if isDivisible
{
    print("El número \(x) no es número primo y es divisible con \(divisores)")
}
else{
    print("El número \(x) es número primo")
}

//SECTION 15 LECTURE 153 Bucles para recorrer arrays

var names = ["Sabio", "Gruñon", "Mocoso", "Tímido", "Mudito", "Dormilón", "Feliz"]

//Menor estricto (de 0 a 6 incluidos)

for i in 0..<names.count
{
    print("El enanito número \(i+1) se llama \(names[i])")
}

//Mayor estrcito (iría de 0 a 7 pero descontamos -1 en names

for i in 0...names.count - 1
{
    print("El enanito número \(i+1) se llama \(names[i])")
}

//Array de nombres (perdemos la opción de saber los ordenes de posición). Solo se tiene en cuenta el nombre del objecto

for dwarfName in names
{
    print("\(dwarfName)")
}

//Lo mismo pero usando el index con enumerated

for (index, dwarfName) in names.enumerated()
{
    print("El enanito en la posición \(index) se llama \(dwarfName)")
}

//Con while

var pos = 0

while pos < names.count
{
    print("El objecto en la posición \(pos) se llama \(names[pos])")
    pos += 1
}
