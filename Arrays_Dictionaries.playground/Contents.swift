//: Playground - Arrays / Dictionaries

var shoppingList : [String] = ["Pan", "Huevos", "Leche", "Chocolate"]

var luckyNumbers : [Int] = [7, 83, 49, 30]

var weights : [Double] = [49.4, 40.5, 39.4]

var activeItems : [Bool] = [true, false, false, false]

/*
 Sección 12, Clase 116
 Crea un array de strings llamado favoriteFoods y rellénalo con 5 tipos de comida que te gusten.
 A continuación crea otro array de enteros y añade los 3 primeros números de teléfono que te vengan a la mente
 */

var favoriteFoods : [String] = ["Salad", "Fish", "Spanish Omelette", "Chicken", "Pistachio"]

var telephoneNumbers : [Int] = [928383838, 934383838, 938272727]

//Count elements of list

shoppingList.count

//Add new element

shoppingList.append("Chicken")

shoppingList.count

shoppingList.append("Coca-Cola")

shoppingList.count

luckyNumbers.append(23)

luckyNumbers.count

/*
 
 Ejercicios para añadir objetos a arrays
 Sección 12, Clase 118
 1.- Añade una comida más al array anterior de favoriteFoods
 2.- Cuenta cuantos elementos tiene ahora ese array
 3.- Añade un número de teléfono más al array anterior
 4.- Cuenta cuantos elementos tiene ahora el array de número de teléfono*/

//1/
favoriteFoods.append("Wine")

//2/
favoriteFoods.count

//3/
telephoneNumbers.append(943762838)

//4/
telephoneNumbers.count

//LECTURE 119 Access to array info

print(shoppingList)

print(shoppingList.first)

print(shoppingList.last)

print(shoppingList.first!)

print(shoppingList.last!)

shoppingList[0]

shoppingList[1]

shoppingList[2]

shoppingList[shoppingList.count - 1] //Last element = shoppingList.last!

shoppingList[5] = "Pepsi-Cola"

print(shoppingList)


/*************************************************************************************
 
 Ejercicios sobre acceso y modificación de elementos de un array
 Sección 12, Clase 120
 Modifica la comida en la posición 2 del array de comidas favoritas y añade "Brócoli". (¿¿¿¿Acaso el brócoli no es tu comida favorita????)
 Modifica el segundo número de teléfono y pon el número 555123456.
 
 ************************************************************************************/

favoriteFoods[3] = "Brócoli"

print(favoriteFoods)

telephoneNumbers[2] = 555123456

print(telephoneNumbers)

//SECTION 12 Lecture 121 - Inserción / Borrado elementos array

//Add in set position element
shoppingList.insert("Brócoli", at:2)

print(shoppingList)

//Remove specific position element

shoppingList.remove(at: 3)

print(shoppingList)

/*************************************************************************************
 
 Ejercicios de inserción y borrado de elementos de arrays
 Sección 12, Clase 122
 Insertad las "Zanahorias" en la posición número 3 del array, para que esté delante del brócoli del ejercicio anterior.
 Eliminad el número en la posición número 2 del array de teléfonos, el que habíamos puesto anteriormente.
 ************************************************************************************/


favoriteFoods.insert("Zanahorias", at: 3)

telephoneNumbers.remove(at: 2)

print(telephoneNumbers)

