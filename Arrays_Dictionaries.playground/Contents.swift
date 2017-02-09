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
