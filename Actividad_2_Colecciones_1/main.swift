//
//  main.swift
//  Actividad_2_Colecciones_1
//
//  Created by Kaiscer Vasquez on 26/10/22.
//

import Foundation

//***** TOOLS ******

var exitDefautl = 0
var enunciados : String = """
Seleciona la opción que deseas realizar:

1 - Crear un array con varios nombres de videojuegos, imprimir todos los videojuegos menos los videojuegos con el nombre de "mario"
2 - Crear un array inmutable y comprobar que no se pueden eliminar datos
3 - Crear un array con mil numeros 5
4 - Crear un array con elementos repetidos y quitar los elementos repetidos con un conjunto
5 - A partir de un conjunto con 10 numeros enteros crear un array con los numeros ordenados de manera ascendente
6 - Crear un diccionario que simule una plantilla de futbol, la clave sera el dorsal y el valor sera el nombre del jugador.
7 - Convertir los valores de la plantilla de futbol anterior a un array
8 - Convertir los dorsales de la plantilla de futbol anterior a un array
9 - Queremos crear un diccionario cuyo valor sea el nombre de un equipo de futbol y los valores sean la plantilla de futbol asociada, es decir, tendra todos los jugadores con su dorsal y su nombre.
10 - Queremos imprimir todas los jugadores y sus dorsales de todos los equipos del ejercicio anterior.
0 - Para salir
"""

var realMadridFC : [Int : String] = [1 : "Courtois",2 : "Carvajal",4 : "Alaba",3 : "Militao",23 : "Mendy",18 : "Tchouameni",8 : "Kross",15 : "Valverde",10 : "Modric",20 : "Vinicius",9 : "Benzema"]


//***** CODE ******

func eje1(excludeG : String){
    
    let videoGame = ["The Witcher 3: Wild Hunt","Grand Theft Auto V", "Legend of Zelda: A link to the Past", "Mario Bro"]
    var newArray : [String] = []
    print("In the list of video games we have: ")
    print()
    
    for (idx, videoG) in videoGame.enumerated() {
        print("Games \(idx + 1) - \(videoG)")
        if !videoG.starts(with: excludeG){
            newArray.append(videoG)
        }
    }
    print()
    print("List of video games without Mario: ")
    print()
    for i in newArray{
        print(i)
    }
    print()
    
   
    
}

func eje2(){
    print("El array inmutable es el siguiente: ")
    print()
    var vowels : Set<String> = ["a","e","i","o","u"]
    
    vowels.insert("a")
    
    //vowels.remove(at: 2) no se puede elimianar el elemento 2 porque en el conjunto no hay posición
    
    print(vowels)
    print()
}

func eje3(){
    
    
    var arrayNum = [Int]()
    let num = 5
    
    print("El array es el siguiente: ")
    print()
    for _ in 1...1000{
        arrayNum.append(num)
    }
    
    let contenido = arrayNum.count
    
    print(arrayNum)
    print()
    print("El array contiene \(contenido) elementos")
    print()
    
}

func eje4(){
    
    let shoppingList = ["papas","tomates","papas","cebolla","pimenton","tomates","ajos"]
    
    let noRepeating = Set(shoppingList)
    print("Lista de la compra con articulos repetidos: \(shoppingList)")
    print()
    print("Lista de la compra sin reperidos: ")
    print()
    for newList in noRepeating{
        print(newList)
    }
    print()
    
}

func eje5(){
    
    let evenDigits : Set = [20,18,16,14,12,10,8,6,4,2]
    
    print("Conjunto de 10 números: \(evenDigits)")
    print()
    print("Números ordenados de manera acendentes: ")
    for accNum in evenDigits.sorted(){
        print(accNum)
    }
    print()
    
}

func eje6(){
    
    
    print("Los titulares del partido son: ")
    
    for (num, name) in realMadridFC{
        print("\(num) - \(name)")
    }
    print()
}

func eje7(){
    
    
    let nameHeadLine = [String](realMadridFC.values.sorted())
    print("Los jugadores titulares son: ")

    print(nameHeadLine)
    print()
    
}

func eje8(){
    
    let numberHeadLine = [Int](realMadridFC.keys.sorted())
    
    print("Los número de los jugadores  titulares son: ")
    print(numberHeadLine)
    print()
    
    
}

func eje9() -> [String: [Int : String]] {
    
    let athleticoM = [13 : "Oblak",
                      2  : "Gimenez",
                      3  : "Reguillon",
                      15 : "Savic",
                      18 : "Molina"]
    
    
    let teams = ["RealMadrid" : realMadridFC,
                 "athleticoM" : athleticoM ]
    
    return teams
    
}

func eje10(){
    print(eje9())
}


//****** LOOP *********

    var input : String?
var control: Bool = true
    while control {
        print(enunciados)
        input = readLine()
        if let option = Int(input ?? ""){
            switch option{
            case 1:
                eje1(excludeG: "Mario")
            case 2:
                eje2()
            case 3:
                eje3()
            case 4:
                eje4()
            case 5:
                eje5()
            case 6:
                eje6()
            case 7:
                eje7()
            case 8:
                eje8()
            case 9:
                eje9()
            case 10:
                eje10()
            case 0:
                print("El Fin de la ejecución")
                control = false
                break
            default:
                print("Has introducido un número incorrecto")
                
            }
            
            
        }
        
    }



   

