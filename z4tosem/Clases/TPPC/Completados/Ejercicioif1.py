#Ejercicio1
#Realiza un programa que pida dos números 'a' y 'b' e indique si si su suma es postiva, negativa o cero
a= int(input("Bienvenido a la calculadora que no le dirá el resultado de sus sumas pero sí le dirá si son positivas, negativas o son iguales a cero.\nAgregue el primer numero para sumar (puede ser negativo)\n"))
b= int(input("Agregue el primer numero para sumar\n"))
c=a+b
siono=input("Presione 's' para continuar\n")
if siono=="s":
    if c>0:
        print("La suma es positiva")
    elif c<0:
        print("La suma es negativa")
    else:
        print("La suma da cero como resultado")
