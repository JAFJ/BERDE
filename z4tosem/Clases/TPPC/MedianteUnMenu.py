#Evidencia Integradora Programa 1
menu=int(input("Elija la opción deseada: \n 1.- Area y Perimetro del circulo \n 2.- Area de un rectangulo \n 3.-Area de un triangulo \n "))
if(menu==1):
        print("Area y Perímetro del Circulo")
        radio=float(input("Inserte el valor del radio:\n "))
        print("Area=",(3.1416*(radio*radio)))
        print("Perimetro=",(2*(3.1416*radio)))
        print("¡Gracias por usar el programa!")
if(menu==2):
        print("Area del rectangulo")
        b=float(input("Inserte el valor de la base:\n "))
        h=float(input("Inserte el valor de la altura:\n "))
        print("Area=",(b*h))
        print("¡Gracias por usar el programa!")
        menu=2
if(menu==3):
        print("Area del triangulo")
        b=float(input("Inserte el valor de la base:\n "))
        h=float(input("Inserte el valor de la altura:\n "))
        print("Area=",((b*h)/2))
        print("¡Gracias por usar el programa!")
#Fin