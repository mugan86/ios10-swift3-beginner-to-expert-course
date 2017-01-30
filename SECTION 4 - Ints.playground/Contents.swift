//: Playground - Ints values

var age:Int

age = 31

age + 4

age - 4

age * 4

age / 4 //Show only int value (31 / 4 = 7 and rest = 3)

age -= 1

age += 3

age *= 4


/**********************************************
 Ejercicio con Enteros
 Section 4, Lecture 36
 -------------------------------
 Crea una variable entera llamada wallet y asígnale el valor de la cantidad de dinero que lleves ahora mismo en   la cartera (déjate de contar centimillos, solo euros o dólares enteros)
 **********************************************/

var wallet: Int

wallet = 26

/********************************************
 String interpolation Section 4 Lecture 37
 ********************************************/

let name = "Anartz Mugika"
let age_int = 31

let 🐷 = "😂😃"

let presentation = "Hola me llamo \(name) y tengo \(age_int) años y...\(🐷)"

/***************************************************************************
 Ejercicios de enteros y strings
 Section 4, Lecture 38
 Crea una variable entera con el valor 2.
 Crea otra variable entera con el valor 4.
 Crea un string que ponga "2+2 = 4"
 Sustituye en el string anterior el 2 y el 4 para que utilicen las variables que has creado en los pasos 1 y 2
 Elimina la variable del paso 2 y arregla el código anterior para que todo funcione con una sola variable. Magia!
 **************************************************************************/

var entero_2: Int = 2
var entero_4: Int

entero_4 = 4

var str_suma:String = "\(entero_2) + \(entero_2) = \(entero_4)"

var usando_suma_dentro_str:String = "\(entero_2) + \(entero_2) = \(entero_2+entero_2)"


/******************************************
 Enteros y Strings
 Quiz 2 | 2 Questions
 Vamos a repasar los contenidos de la sección
 ********************************************/

//Los números enteros pueden tener decimales (NO)
//Para declarar un String, este va rodeado de los símbolos (")
