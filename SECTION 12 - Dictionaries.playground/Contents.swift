//: Playground - Dictionaries

//Sección 12, Clase 127

var shoppingList : [String : String] = ["Patatas": "Tengo que comprar un kg de patatas",
                                        "Huevos": "Huevos",
                                        "2": "Cebollas",
                                        "3": "Pimientos"
                                        ]

shoppingList["2"]

shoppingList = ["Patatas": "Tengo que comprar un kg de patatas",
                                        "Huevos": "Necesito 5 huevos para la tortilla",
                                        "Cebollas": "Necesito 3 cebollas grandes",
                                        "Pimientos": "Los pimientos verden enriquecen la tortilla"
]
var luckyNumbers : [String : Int] = ["1" : 7 , "2" : 5 , "3" : 13 ]

//Inicializar sin nada pendiente de llenar
var myDict : [Int : Float] = [:]

myDict[3] = 5.4

print(myDict)


luckyNumbers["1"]

shoppingList.count
luckyNumbers.count

shoppingList["Huevos"] = "Necesito 6 huevos para una buena tortilla"

shoppingList["Platanos"] = "Necesito 3 plátanos para una buena macedonia"

shoppingList["Manzanas"] = "Necesitaremos 2 manzanas golden para la macedonía"

//Sección 12, Clase 128

/*
 Crea un diccionario de acciones. Las claves serán las 3 grandes compañías "AAPL", "GOOG", "AMZN" y los valores su nombre de empresa oficial respectivo: "Apple, "Google" y "Amazon".
 Añade dos nuevas empresas en una nueva línea de código "FB", referencia de la red social "Facebook" y "TW" para hacer referencia a "Twitter".
 */


var acciones : [String : String] = [ "AAPL": "Apple", "GOOG": "Google", "AMZN" : "Amazon"]

acciones["FB"] = "Facebook"

acciones["TW"] = "Twitter"

print(acciones)

//Section 12 - Lecture 129 - Métodos con diccionarios

var numbers : [ Int : String] = [1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro"]

numbers[3]

if numbers.isEmpty
{
    print("Este diccionario está vacio")
}
else{
    print("Este diccionario tiene \(numbers.count) elementos")
}


//Ver el valor de un diccionario, teniendo en cuenta si existe o no
if let myNumber = numbers[3]
{
    print(myNumber)
}
else{
    print("El valor no ha podido ser recuperado")
}

var airports = [String : String] () //Esto se deberá representar así ya que a continuación se inicializa

airports = ["PMI" : "Palma de Mallorca", "BCN" : "Barcelona", "MAD" : "Madrid", "VAL": "Valenca"]

//Para comprobar el valor antes de actualizarlo con una clave exacta

if let oldAirport = airports.updateValue("Valencia", forKey: "VAL")
{
    print("El aeropuerto antiguo para la clave VAL era \(oldAirport)")
}

print(airports["VAL"]!)


//Remove un elemento del diccionario

if let oldAirport = airports.removeValue(forKey: "VAL")
{
    print("Hemos eliminado el aeropuerto de \(oldAirport)")
}



if let air = airports["VAL"]
{
    print(air)
}
else{
    print("El aeropuerto con clave VAL no existe")
}

//Section 12 Lecture 130

/*
 Crea un diccionario con clave el nombre de tres personas y valores sus fechas de nacimiento en forma de String.
 Inserta "Juan Gabriel Gomila" : "19-05-1888"
 Modifica de forma segura mi año de nacimiento! Nací en 1988. Imprime la fecha antigua por consola para ello
 Elimíname de tu diccionario de forma segura imprimiendo el año correcto de mi nacimiento.
 */

var personas = [String : String]  ()

personas = ["Anartz Mugika Ledo": "10-01-1986", "Juan Palomo Palomo": "20-03-1990"]

personas["Juan Gabriel Gomilla"] = "19-05-1888"

print(personas)

if let oldDayOfBirth = personas.updateValue("19-05-1988", forKey: "Juan Gabriel Gomilla")
{
    print("La fecha de nacimiento de Juan Gabriel Gomilla era \(oldDayOfBirth) y ahora es \(personas["Juan Gabriel Gomilla"]!)")
}
else{
    print("No se ha actualizado la fecha seleccionada por no encontrarse ningún valor")
}


if let oldDayBirth = personas.removeValue(forKey: "Juan Gabriel Gomilla")
{
    print("Borramos a Juan Gabriel Gomilla cuya fecha de nacimiento es \(oldDayBirth)")
}

print(personas)


