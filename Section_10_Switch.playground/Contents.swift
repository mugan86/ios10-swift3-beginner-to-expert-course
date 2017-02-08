//Playground - Switch
let mark = "F"

/*if mark == "A"
{
    print("Genial! Eres un crack!")
}

if mark == "B"
{
    print("Genial! Eres un crack!")
}

if mark == "C"
{
    print("Buen trabajo! Has aprobado")
}

if mark == "D"
{
    print("Te ha faltado poco")
}

if mark == "F"
{
    print("Tendrás que estudiar más")
}*/

switch mark {
    case "A":
       print("Genial! Eres un crack!")
    case "B":
        print("Genial! Eres un crack!")
    case "C":
        print("Buen trabajo! Has aprobado")
    case "D":
        print("Te ha faltado poco")
    case "F":
        print("Tendrás que estudiar más")
    default:
    print("La nota no es correcta")
    
}

/*
 Crea un string llamado dayOfTheWeek y configúralo para que tome el valor Lunes. A continuación utiliza un Switch para imprimir cuantos días faltan para el Viernes en función del valor de dicho String.*/


let dayOfTheWeek : String = "Lunes"


switch dayOfTheWeek
{
    case "Lunes":
        print("Faltan 4 días para el viernes!")
    case "Martes":
        print("Faltan 3 días para el viernes!")
    case "Miércoles":
        print("Faltan 2 días para el viernes!")
    case "Jueves":
        print("Faltan 1 días para el viernes!")
    case "Viernes":
        print("Hoy es viernes!")
    case "Sábado":
        print("Faltan 6 días para el viernes!")
    case "Domingo":
        print("Faltan 5 días para el viernes!")
    default:
        print("Has introducido el día incorrecto")
    
}