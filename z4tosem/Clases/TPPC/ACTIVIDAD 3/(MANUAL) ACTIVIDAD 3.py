
Milista=[10,"Pera",0.1,2,"Coyote",0.2,11,"Cacahuate",0.3,12,"Sabor",0.4,13,"Beso",0.5,14,"Edo",0.6,15,"Tomate",9.8]

class Clasesita():
    def __init__(self, entero, cadenita, flotante):
        self.entero = entero
        self.cadenita = cadenita
        self.flotante = flotante
        
    def __repr__(self):
        return "{0}:{1}".format(self.entero, self.cadenita, self.flotante) 
#Crear def para crear, agregar y leer archivos 

class archivito():
    def crearArch(self):
        archivo = open ("archivo1.txt", "w")
        archivo.close

    def escribirArch(self):
        archivo = open("archivo1.txt", "a")
        cadena = input()
        archivo.write(cadena+"\n")
        archivo.close

    def leerArch(self):
        archivo = open ("archivo1.txt","r")
        linea = archivo.readline()
        while(linea):
            print(linea)
            linea=archivo.readline()
        archivo.close()
archivote = archivito()

Milista2 = [Clasesita(10,"Pera",0.1), Clasesita(2,"Coyote",0.2), Clasesita(11,"Cacahuate",0.3), Clasesita(12,"Sabor",0.4), Clasesita(13,"Beso",0.5), Clasesita(14,"Edo",0.6), Clasesita(15,"Tomate",9.8)]

otro="si"

while otro=="si":
    print("Lista original:\n")
    print(Milista)
    print("Lista de operaciones:\n"
        +"0.- Ordenar lista\n"
        +"1.- Dar longitud de lista\n"
        +"2.- Añadir elemento\n"
        +"3.- Insertar elemento en 'x' posición\n"
        +"4.- Dar de baja/Borrar elemento\n"
        +"5.- Crear archivo\n"
        +"6.- Agregar dato al archivo\n"
        +"7.- Leer archivos (se necesita crear previamente)\n"
        )

    menu=int(input("¿Qué desea hacer?\n"))

    posi=0

    if (menu==0):
        print("Parámetros a usar para la organización\n"
        +"1.- Números enteros\n"
        +"2.- El texto\n"
        +"3.- El número decimal\n")
        menu2=int(input("¿Qué parámetro desea usar?\n"))
        if (menu2==1):
            print("La lista organizada es:")
            print(sorted(Milista2, key=lambda x: x.entero))
        elif (menu2==2):
            print("La lista organizada es:")
            print(sorted(Milista2, key=lambda x: x.cadenita))
        elif (menu2==3):
            print("La lista organizada es:")
            print(sorted(Milista2, key=lambda x: x.flotante))

    elif (menu==1):
        print("El número de elementos es:")
        print(len(Milista))

    elif (menu==2):
        datito=(input("Ingrese el valor del elemento a agregar a la cola de la lista.\n"))
        Milista.append(datito)
        print("La lista actualizada es:")
        print(Milista)

    elif (menu==3):
        print("Ingrese primero el lugar que quiere que su dato tenga (por ejemplo, si desea el 1er lugar en la lista, escriba el número '1'), después, el valor del dato.")
        posi = 0
        while posi<1:
            posi=int(input("Posición (no debe ser menor a uno): "))
            
        posi_real=posi-1
        datito2=input("Ahora, ingrese el valor de su elemento: ")
        Milista.insert(posi_real, datito2)
        print(Milista)

    elif (menu==4):
        print("Presione qué lugar de la lista removerá")
        posi2=int(input("Posición (no debe ser menor a uno): "))

        posi2_real=posi2-1
        Milista.pop(posi2_real)
        print("Elemento borrado")

        print(Milista)
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
        
    elif (menu!=1 & menu!=2 & menu!=3 & menu!=4 & menu!=5 & menu!=6 & menu!=7):
        print("No es una opción correcta.")
        #menu=int(input("¿Qué desea hacer?"))

    otro=input("¿quiere usar el programa de nuevo por $0.00MXN? (ingrese 'si' o 'no')\n")
print("Muchas gracias por juegar con nosostros.")