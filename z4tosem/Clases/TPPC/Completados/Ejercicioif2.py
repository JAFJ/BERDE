#Ejercicio2
#Escriba un programa que lea un número e indique si es par o impar
num=float(input("Bienvenido al indentificador de números pares.\nEscriba un número:\n"))
yea=2
comprobacion=num/yea
intu=int(comprobacion)
intu2=float(intu)
resu=(comprobacion-intu2)
if num!=0.0:
    if resu==0.5:
        print("Es un numero impar")
    else:
        print("Es un numero par")
else:
    print("Su número es cero.")