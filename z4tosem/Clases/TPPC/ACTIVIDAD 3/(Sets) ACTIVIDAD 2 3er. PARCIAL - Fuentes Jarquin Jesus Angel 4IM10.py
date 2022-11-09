# ordenarlas, 
# dar la longitud o número de elementos, 
# añadir más elementos, 
# insertar elementos en una posición indicada por el usuario, 
# dar de baja o borrar algún elemento.

setter=set()
setternum=set()
setterstr=set()


otro="si"
tutorial=False

print("Se le da la bienvenida al programa SET DINAMICO.")

while otro=="si":
    if tutorial==False:
        print("Primero, agreguemos 21 elementos en el set.")
        for b in range(22):
            print("¿Qué tipo de información desea guardar en el set?\n1.-Enteros\n2.-Cadenas de texto\n")
            eleccion=int(input())
            if eleccion==1:
                print("Agregará un elemento de tipo entero (numeros).\nPor favor, ingrese el dígito.\n")
                newdigito=int(input())
                setter.add(newdigito)
                setternum.add(newdigito)
                print("Siguiente.")
            if eleccion==2:
                print("Agregará una cadena de texto.\nIngrese su texto por favor.")
                newstr=input()
                setter.add(newstr)
                setterstr.add(newstr)
                print("Siguiente.")
            
        tutorial=True

    if tutorial==True:
        print("Set de operaciones:\n"
            +"0.- Ordenar set\n"                            #Listo
            +"1.- Dar longitud de set\n"                    #Listo
            +"2.- Añadir elemento\n"                        #Listo
            +"3.- Insertar elemento en 'x' posición\n"      #Listo
            +"4.- Dar de baja/Borrar elemento\n"            #Listo
            )

        menu=int(input("¿Qué desea hacer?\n"))

        posi=0

        if (menu==0):
            print("Ordenando elementos", end='')
            print(".", end='')
            print(".", end='')
            print(".")
            
            liststr=list(setterstr)
            listnum=list(setternum)
            liststr.sort()
            listnum.sort()

            print("Listo!")
            print("Set ordenado:")
            print(listnum+liststr)           


        elif (menu==1):
            print("El número de elementos es:")
            print(len(setter))

        elif (menu==2):
            print("¿Qué tipo de información desea guardar en el set?\n1.-Enteros\n2.-Cadenas de texto\n")
            eleccion=int(input())
            if eleccion==1:
                print("Agregará un elemento de tipo entero (numeros).\nPor favor, ingrese el dígito.\n")
                newdigito=int(input())
                setter.add(newdigito)
                setternum.add(newdigito)
                print("Elemento exitosamente guardado.")
            if eleccion==2:
                print("Agregará una cadena de texto.\nIngrese su texto por favor.")
                newstr=input()
                setter.add(newstr)
                setterstr.add(newstr)
                print("Elemento exitosamente guardado.")

        elif (menu==3):
            print("En el uso de set's no hay un orden en específico, a diferencia de las listas, los set's no llevan un identificador"
            +" por cada elemento que tienen, y a la hora de imprimir el set, los elementos no estarán en orden. Por lo tanto, para esta seleccion del menú,"
            +" se convertirá el set en una lista para posteriormente usted eliga un lugar para introducir el elemento deseado. Después, se convertirá"
            +" de lista a set, por lo que el lugar que ocupaba dicho elemento se perderá, y se mezclará con los demás. ¿Desea continuar?")
            print("(Ingrese 1 para continuar, 0 para declinar)")
            continuar=int(input())
            if continuar==0:
                print("De acuerdo.")

            if continuar==1:
                print("De acuerdo.")
                print("Ingrese primero el lugar que quiere que su dato tenga (por ejemplo, si desea el 1er lugar en el set, escriba el número '1'), después, el valor del dato.")
                posi = 0
                while posi<1:
                    posi=int(input("Posición (no debe ser menor a uno): "))
                    
                posi_real=posi-1
                print("¿Qué tipo de información desea guardar en el set?\n1.-Enteros\n2.-Cadenas de texto\n")
                eleccion=int(input())
                if eleccion==1:
                    datito2=int(input("Ahora, ingrese el valor de su elemento: "))
                    Lsetter=list(setter)
                    Lsetter.insert(posi_real, datito2)
                    setter.add(datito2)
                    setternum.add(datito2)
                    print("Elemento exitosamente guardado en lista y en set.")
                    print("La lista actualizada es:", end='')
                    print(Lsetter)
                    print("El set actualizado es:", end='')
                    print(setter)

                if eleccion==2:
                    datito2=input("Ahora, ingrese el valor de su elemento: ")
                    Lsetter=list(setter)
                    Lsetter.insert(posi_real, datito2)
                    setter.add(datito2)
                    setterstr.add(datito2)
                    print("Elemento exitosamente guardado en lista y en set.")
                    print("La lista actualizada es:", end='')
                    print(Lsetter)
                    print("El set actualizado es:", end='')
                    print(setter)

        elif (menu==4):
            print("La lista actual es:")
            print(setter)
            print("Por favor, seleccione el tipo de elemento que borrará.\n1.-Números\n2.-Texto")
            tipo_element=int(input())
            if tipo_element==1:
                print("Usted borrará: números\nIngrese el dígito que desea borrar.")
                eliminadito=int(input())
                setter.remove(eliminadito)
                setternum.remove(eliminadito)
                print("Elemento borrado\nLa lista actualizada es:")
                print(setter)
            if tipo_element==2:
                print("Usted borrará: texto\nIngrese el texto que desea borrar.")
                eliminadito=input()
                setter.remove(eliminadito)
                setterstr.remove(eliminadito)
                print("Elemento borrado\nLa lista actualizada es:")
                print(setter)

    otro=input("¿quiere usar el programa de nuevo por $0.00MXN? (ingrese 'si' o 'no')\n")
print("Muchas gracias por usar el programa.")