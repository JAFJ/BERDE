#Evidencia Integradora Programa 2
menu=int(input("Elija la opción deseada: \n 1.- Suma \n 2.- Resta \n 3.-Multiplicacion \n 4.-Division \n 5.-Exponente\n"))
if(menu==1):
        print("Suma")
        v1=int(input("Inserte el primer valor:\n "))
        v2=int(input("Inserte el segundo valor:\n "))
        print(str(v1)," + ",(str(v2))," =")
        result=eval("v1+v2")
        print(result)
        print("¡Gracias por usar el programa!")
if(menu==2):
        print("Resta")
        v1=int(input("Inserte el primer valor:\n "))
        v2=int(input("Inserte el segundo valor:\n "))
        print(str(v1)," - ",(str(v2))," =")
        result=eval("v1-v2")
        print(result)
        print("¡Gracias por usar el programa!")
if(menu==3):
        print("Multiplicacion")
        v1=int(input("Inserte el primer valor:\n "))
        v2=int(input("Inserte el segundo valor:\n "))
        print(str(v1)," * ",(str(v2))," =")
        result=eval("v1*v2")
        print(result)
        print("¡Gracias por usar el programa!")
if(menu==4):
        print("Division")
        v1=int(input("Inserte el primer valor:\n "))
        v2=int(input("Inserte el segundo valor:\n "))
        print(str(v1)," / ",(str(v2))," =")
        result=eval("v1/v2")
        print(result)
        print("¡Gracias por usar el programa!")
if(menu==5):
        print("Exponente")
        v1=int(input("Inserte el primer valor:\n "))
        v2=int(input("Inserte el segundo valor:\n "))
        print(str(v1)," ^ ",(str(v2))," =")
        result=eval("v1**v2")
        print(result)
        print("¡Gracias por usar el programa!")
#Fin