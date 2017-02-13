//: Playground - Dictionaries

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

luckyNumbers["1"]

shoppingList.count
luckyNumbers.count

shoppingList["Huevos"] = "Necesito 6 huevos para una buena tortilla"