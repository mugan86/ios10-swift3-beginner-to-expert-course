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