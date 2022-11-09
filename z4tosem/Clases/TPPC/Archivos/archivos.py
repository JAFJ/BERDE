class archivo():
    def crearArchivo(self):
        archivo = open ("archivo.txt", "w")
        archivo.close

    def escribirArch(self):
        archivo = open("archivo.txt", "a")
        print("Ingresa tu nombre y boleta")
        cadena = input()
        archivo.write(cadena + "\n")
        archivo.close

    def leerArch(self):
        archivo = open ("archivo.txt","r")
        linea = archivo.readline()
        while(linea):
            print(linea)
            linea=archivo.readline()
        archivo.close()
a = archivo()
a.crearArchivo()
a.escribirArch()
a.leerArch()