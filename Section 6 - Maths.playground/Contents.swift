//: Playground - Aritmética elemental

//Operaciones con enteros Section 6 - Lecture 54
let x = 7
let y = 5

x + y
x - y
x+y
x-y
x / y
x * y
x % y

3 * 10 + 5

(3 * 10) + 5

3 * (10 + 5)

3 * ( (10 + 5) - 5 ) * 3

let myAge = 31

let myWifeAge = 28

myAge - myWifeAge

myAge + myWifeAge

(myAge + myWifeAge) % 3

(myAge + myWifeAge) * 4

/**************************************************************
 Ejercicios de aritmética
 Section 6, Lecture 55
 Crea dos variables entera, una con el valor del año de nacimiento de tu padre, y otro con el año de nacimiento de tu madre.
 Suma dichos valores
 Resta dichos valores
 Multiplica el primero por 2 y súmale el segundo dividido por 2
 Adivina si alguno de ellos es par haciendo el módulo del número por dos.
 **************************************************************/

//Crea dos variables entera, una con el valor del año de nacimiento de tu padre, y otro con el año de nacimiento de tu madre.

var nacimientoPadre = 1960
var nacimientoMadre = 1964

//Suma dichos valores
nacimientoMadre + nacimientoPadre

//Resta dichos valores
nacimientoMadre - nacimientoPadre

//Multiplica el primero por 2 y súmale el segundo dividido por 2
(nacimientoPadre * 2) + (nacimientoMadre / 2)

nacimientoPadre % 2 //Mirar si es par (=0)
nacimientoMadre % 2 //Mirar si es par (=0)



/*********************************************************************************************
Numeros decimales, floats y doubles / Section 6 - Lecture 56
*********************************************************************************************/

let weight_float: Float = 68.39393939390302092029309393020209029292922229229929292922
let weight_double: Double = 68.39393939390302092029309393020209029292922229229929292922
let weight_decimal: Float = 68.39393939390302092029309393020209029292922229229929292922

let age: Float = 31
let age_without_type = 31.0

age / 3
age_without_type / 3

let pi:Float = 3.1415926536

/**************************************************************
 Ejercicios de aritmética
 Section 6, Lecture 57
 Busca en la wikipedia información sobre el número e.
 Crea una variable de tipo float para guardar su valor.
 Busca en la wikipedia información sobre el número de oro.
 Crea una variable de tipo double para guardar su valor.
 **************************************************************/


//Busca en la wikipedia información sobre el número e (https://es.wikipedia.org/wiki/Número_e)
//Crea una variable de tipo float para guardar su valor.
let e:Float = 2.71828182845904523536

//Busca en la wikipedia información sobre el número de oro ( https://es.wikipedia.org/wiki/Número_áureo)
//Crea una variable de tipo double para guardar su valor.

let oro:Double = 1.61803398874988

/**************************************************************
 Ejercicios de aritmética
 Section 6, Lecture 56
 **************************************************************/

let radius: Double = 5

//Parsear pi en double
Double(pi) * radius

radius
