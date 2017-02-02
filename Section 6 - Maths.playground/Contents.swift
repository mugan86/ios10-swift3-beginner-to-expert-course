//: Playground - Aritmética elemental

//Para usar el framework Foundation
import Foundation

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

//Parsear un int en float para poder multiplicar
let radius_int: Int = 5

pi * Float(radius_int)

let x_value = 2.9999999

Int(x_value)

Int(pi * Float(radius_int))

/*Ejercicios de castings
Sección 6, Clase 59
Crea una variable entera con el valor del día del mes en que naciste y otra decimal con el valor del número e del ejercicio anterior.
Suma dichos valores y obtén un resultado con decimales.
Suma dichos valores y obtén un resultado entero.
¿Dan ambas soluciones el mismo valor? ¿Por qué?*/

//Crea una variable entera con el valor del día del mes en que naciste y otra decimal con el valor del número e del ejercicio anterior.
let int_dia_del_mes_que_naci: Int = 10

let decimal_dia_del_mes_que_naci: Float = 10.0

//Suma dichos valores y obtén un resultado con decimales.

Float(int_dia_del_mes_que_naci) + decimal_dia_del_mes_que_naci

//Suma dichos valores y obtén un resultado entero.

int_dia_del_mes_que_naci + Int(decimal_dia_del_mes_que_naci)

/*¿Dan ambas soluciones el mismo valor? ¿Por qué?
 
 La razón de que de el mismo resultado tiene su razón en que el valor del día al ser un valor que en condiciones normales es entero, si le ponemos decimales es decir ".0" lo considera que es 10 a la hora de sumar
 */


/**************************************************************
 Foundation Framework
 Section 6, Lecture 60
 **************************************************************/

var pi_value = 3.14159265

Int(pi_value)

floor(pi_value) //Redondear para abajo
ceil(pi_value)  //Redondear hacia arriba

sqrt(3)

sqrt(4)

sqrt(4.0)

pow(5,3) //5^3

pow(2,8)

var wallet = 50

wallet -= 7

wallet -= 8

wallet -= 10

wallet -= 5

wallet -= 20

/*
 Ejercicio de matemáticas
 Sección 6, Clase 61
 Crea una variable numérica y utilízala para hacer una potencia, una raíz, un floor, un ceil, un += y un -=.
 */

var numero_:Double = 12.344444

pow(numero_, 2)     //Potencia

sqrt(numero_)       //Raíz

floor(numero_)      //Redondeo hacia abajo

ceil(numero_)       //Redonde hacia arriba

numero_ += 12.345   //Suma al valor actual

numero_ -= 14.432   //Resta al valor actual





