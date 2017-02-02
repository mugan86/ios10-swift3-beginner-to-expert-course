//: Playground - noun: a place where people can play

let age : Int = 31

let name : String = "Anartz"

var isSunny : Bool = true

//let isCloud : Bool = "12" Not posiblem initialize string!!!

//let isCloud : Bool = 1  Not posiblem initialize int!!!

isSunny = false

/*Ejercicio de booleanos
Sección 7, Clase 66
Crea una variable booleana isWoman, y asígnala a verdadero o falso según si eres o no una mujer.*/

let isWoman: Bool = false

if isWoman
{
    print("Soy mujer")
}
else
{
    print("Soy hombre")
}

//Section 7 - Lecture 67

let isPayDay : Bool = true

var wallet : Int = 20

if isPayDay
{
    wallet += 300
    wallet += 250
    wallet += 100
}

wallet += 340

/*
 Ejercicios con if
 Sección 7, Clase 68
 Crea un operador con un if en swift que sume 2+2 si el valor booleano de decisión es verdadero.*/

let makeAddValues : Bool = true

if makeAddValues
{
    print(2+2)
}
else
{
    print("No sumamos nada")
}

//Section 7 - Lecture 69

let x = 8
let y = 7

if x >= y
{
    if x == y{
        print("x igual a y")
    }
    else
    {
        print("X mayor que y")
    }
    
}
else if x <= y
{
    print("x menor que y")
}

let name_ : String = "Anartz"

if name_ != "Anartz"
{
    wallet += 200
}

/*
 Ejercicio de comparación
 Sección 7, Clase 70 / 71
 Crea una comparación con un if que compare dos números decimales y imprima un texto en caso de que se cumpla la condición.*/

let x_dec : Float = 123.43
let y_dec : Float = 234.34

if x_dec > y_dec
{
    print("El primer número (\(x_dec)) es mayor que el segundo (\(y_dec))")
}
else if x_dec == y_dec
{
    print("Los dos números son iguales (\(x_dec))")
}
else{ //x_dec < y_dec
    print("El primer número (\(x_dec)) es menor que el segundo (\(y_dec))")
}

/*
 Ejercicio con else
 Sección 7, Clase 72
 Crea un if con una variable cualquiera que elijas y asegúrate de que que incluya también un else.*/

let age_: Int = 17

if age_ >= 18
{
    print("Soy mayor de edad")
}
else
{
    print("Soy menor de edad")
}