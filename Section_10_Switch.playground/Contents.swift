//Playground - Switch
let mark = "F"

if mark == "A"
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
}

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