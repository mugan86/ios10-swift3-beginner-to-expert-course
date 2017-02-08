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

/* SECTION 10 - LECTURE 96
 Crea un string llamado dayOfTheWeek y configúralo para que tome el valor Lunes. A continuación utiliza un Switch para imprimir cuantos días faltan para el Viernes en función del valor de dicho String.
    SECTION 10 - LECTURE 98
 En el ejemplo anterior con los días de la semana, haz que la opción por defecto imprima un mensaje del estilo "No has seleccionado ningún día de la semana válido!"
 */




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
        print("No has seleccionado ningún día de la semana válido!")
    
}

//Multiples opciones en un case (SECTION 10 - LECTURE 99

let char : Character = "2"

switch char{
    case "a", "e", "i", "o", "u":
        print("Es una vocal")
    default:
        print("No es una vocal")
}

let speed : Int = 100

switch speed{
    case 0...60:
        print("Vamos demasiado despacio para ir en autopista")
    case 61...100:
        print("Velocidad crucero")
    case 101...120:
        print("Velocidad considerable, hay que ir atento")
    default:
        print("Te has pasado el límite de velocidad")
}

/*Crea un switch que tome un entero por parámetro. Si el número es 2, 3, 5 o 7 imprime "Número primo". Asegúrate de no poner 4 casos!!
 Crea un switch para las horas del día en formato 24 horas. Utiliza varios casos para poder decir si estamos en el amanecer, mañana, mediodía, tarde, noche.*/

let valor_entero : Int = 2

switch valor_entero{
case 2,3,5,7:
    print("Número primo!")
default:
    print("Número que no es primo")
}

let hora_del_dia : Int = 20

switch hora_del_dia{
    case 0...6, 21...24:
        print("Noche")
    case 7:
        print("Amanecer")
    case 8...12:
        print("Mañana")
    case 13...14:
        print("Mediodia")
    case 15...20:
        print("Tarde")
    default:
        print("No se ha especificado correctamente la hora")
}
