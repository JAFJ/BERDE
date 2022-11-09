#Ejercicio3
#EEscribe un programa de conversión de números a ltereas, considerando los números de 1 al 20. 
# Ejemplo 1 = uno, 2 = dos, etc. Hacer uso del while.
valo=input("Bienvenido al conversor de número a letras, por favor, escriba el número '1' para comenzar.\n")
valor=(int(valo))
if valor==1:
    print("¡Perfecto!")
while (valor<=20):
    if valor==1:
        nombre="uno"
    elif valor==2:
        nombre="dos"
    elif valor==3:
        nombre="tres"
    elif valor==4:
        nombre="cuatro"
    elif valor==5:
        nombre="cinco"
    elif valor==6:
        nombre="seis"
    elif valor==7:
        nombre="siete"
    elif valor==8:
        nombre="ocho"
    elif valor==9:
        nombre="nueve"
    elif valor==10:
        nombre="diez"
    elif valor==11:
        nombre="once"
    elif valor==12:
        nombre="doce"
    elif valor==13:
        nombre="trece"
    elif valor==14:
        nombre="catorce"
    elif valor==15:
        nombre="quince"
    elif valor==16:
        nombre="dieciséis"
    elif valor==17:
        nombre="diecisiete"
    elif valor==18:
        nombre="dieciocho"
    elif valor==19:
        nombre="diecinueve"
    elif valor==20:
        nombre="veinte"
    valorcito=(str(valor))
    print(valorcito + "=" + nombre)
    valor+=1