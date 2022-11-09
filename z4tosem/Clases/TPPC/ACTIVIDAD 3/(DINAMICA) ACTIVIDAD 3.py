
mylist=[]
mylistnum=[]
myliststr=[]

 
otro="si"
tutorial=False

print("Se le da la bienvenida al programa LISTA DINAMICA (con archivos).")

class archivito():
    def crearArch(self):
        archivo = open ("archivo2.txt", "w")
        archivo.close

    def escribirArch(self):
        archivo = open("archivo2.txt", "a")
        cadena = input()
        archivo.write(cadena+"\n")
        archivo.close

    def leerArch(self):
        archivo = open ("archivo2.txt","r")
        linea = archivo.readline()
        while(linea):
            print(linea)
            linea=archivo.readline()
        archivo.close()
archivote=archivito()

while otro=="si":
    if tutorial==False:
        print("Primero, agreguemos 21 elementos en la lista.")
        for b in range(21):
            print("¿Qué tipo de información desea guardar en la lista?\n1.-Enteros\n2.-Cadenas de texto\n")
            eleccion=int(input())
            if eleccion==1:
                print("Agregará un elemento de tipo entero (numeros).\nPor favor, ingrese el dígito.\n")
                newdigito=int(input())
                mylist.append(newdigito)
                mylistnum.append(newdigito)
                print("Siguiente.")
            if eleccion==2:
                print("Agregará una cadena de texto.\nIngrese su texto por favor.")
                newstr=input()
                mylist.append(newstr)
                myliststr.append(newstr)
                print("Siguiente.")
            
        tutorial=True

    if tutorial==True:
        print("Set de operaciones:\n"
            +"0.- Ordenar lista\n"                            #Listo
            +"1.- Dar longitud de la lista\n"                    #Listo
            +"2.- Añadir elemento\n"                        #Listo
            +"3.- Insertar elemento en 'x' posición\n"      #Listo
            +"4.- Dar de baja/Borrar elemento\n"            #Listo
            +"5.- Crear archivo\n"                        #Listo
            +"6.- Añadir elemento al archivo\n"                        #Listo
            +"7.- Leer archivos (se necesita crear previamente)\n"                        #Listo
            )

        menu=int(input("¿Qué desea hacer?\n"))

        posi=0

        if (menu==0):
            print("Ordenando elementos", end='')
            print(".", end='')
            print(".", end='')
            print(".")
            
            myliststr.sort()
            mylistnum.sort()

            print("Listo!")
            print("Lista ordenada:")
            print(mylistnum+myliststr)


        elif (menu==1):
            print("El número de elementos es:")
            print(len(mylist))

        elif (menu==2):
            print("¿Qué tipo de información desea guardar en la lista?\n1.-Enteros\n2.-Cadenas de texto\n")
            eleccion=int(input())
            if eleccion==1:
                print("Agregará un elemento de tipo entero (numeros).\nPor favor, ingrese el dígito.\n")
                newdigito=int(input())
                mylist.append(newdigito)
                mylistnum.append(newdigito)
                print("Elemento exitosamente guardado.")
            if eleccion==2:
                print("Agregará una cadena de texto.\nIngrese su texto por favor.")
                newstr=input()
                mylist.append(newstr)
                myliststr.append(newstr)
                print("Elemento exitosamente guardado.")

        elif (menu==3):
            print("Ingrese primero el lugar que quiere que su dato tenga (por ejemplo, si desea el 1er lugar en la lista, escriba el número '1'), después, el valor del dato.")
            posi = 0
            while posi<1:
                posi=int(input("Posición (no debe ser menor a uno): "))
                
            posi_real=posi-1
            print("¿Qué tipo de información desea guardar en la lista?\n1.-Enteros\n2.-Cadenas de texto\n")
            eleccion=int(input())
            if eleccion==1:
                datito2=int(input("Ahora, ingrese el valor de su elemento: "))
                mylist.insert(posi_real, datito2)
                mylistnum.append(datito2)
                print("Elemento exitosamente guardado en lista.")
                print("La lista actualizada es:", end='')
                print(mylist)

            if eleccion==2:
                datito2=input("Ahora, ingrese el valor de su elemento: ")
                mylist.insert(posi_real, datito2)
                myliststr.append(datito2)
                print("Elemento exitosamente guardado en lista.")
                print("La lista actualizada es:", end='')
                print(mylist)

        elif (menu==4):
            print("La lista actual es:")
            print(mylist)
            print("Por favor, seleccione el tipo de elemento que borrará.\n1.-Números\n2.-Texto")
            tipo_element=int(input())
            if tipo_element==1:
                print("Usted borrará: números\nIngrese el dígito que desea borrar.")
                eliminadito=int(input())
                mylist.remove(eliminadito)
                mylistnum.remove(eliminadito)
                print("Elemento borrado\nLa lista actualizada es:")
                print(mylist)
            if tipo_element==2:
                print("Usted borrará: texto\nIngrese el texto que desea borrar.")
                eliminadito=input()
                mylist.remove(eliminadito)
                myliststr.remove(eliminadito)
                print("Elemento borrado\nLa lista actualizada es:")
                print(mylist)
        
        elif (menu==5):
            print("Se creará el archivo 'archivo1'")
            archivote.crearArch()
            print("Elemento creado!")
        elif (menu==6):
            print("Se añadirá un elemento al archivo 'archivo1'")
            print("Por favor, ingrese su elemento")
            archivote.escribirArch()
            print("Elemento agregado al archivo con éxito!")
        elif (menu==7):
            print("Este es el contenido del archivo 'archivo1':")
            archivote.leerArch()
            

    otro=input("¿quiere usar el programa de nuevo por $0.00MXN? (ingrese 'si' o 'no')\n")
print("Muchas gracias por usar el programa.")