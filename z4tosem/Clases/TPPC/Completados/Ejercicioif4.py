#Ejercicio4
#Introducir al programa de la calculadora (con número) el uso del while.
print("Bienvenido a la calculadora")
yea=0

while yea<=5:
    yea+=1
    if yea==1:
        print("1.-Suma")
    elif yea==2:
        print("2.-Resta")
    elif yea==3:
        print("3.- Multiplicacion")
    elif yea==4:
        print("4.- Division")
    elif yea==5:
        print("5.- Exponente")
menu=int(input("Por favor, seleccione el tipo de operación que desea.\n"))

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
