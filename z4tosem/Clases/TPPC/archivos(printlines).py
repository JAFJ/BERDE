
class claseeee():
    def creadordearchivo(self):
        archivo = open ("archivo21.txt", "w")
        archivo.close

    def escribirArch(self):
        archivo = open("archivo21.txt", "a")
        print("Ingresa tu nombre y boleta")
        cadena = input()
        archivo.write(cadena + "\n")
        archivo.close

    def Leerarchivo(self):
        archivo = open ("archivo21.txt","r")
        linea= archivo.readlines()
        print(linea)
        print()
        print("Este es el elemwento 1 ->", linea[0])
        print("Este es el elemwento 2 ->", linea[1])
        print("Este es el elemwento 3 ->", linea[2])
        print("Este es el elemwento 4 ->", linea[3])
        print("Este es el elemwento 5 ->", linea[4])
        archivo.close()

a=claseeee()
a.creadordearchivo()
a.escribirArch()
a.escribirArch()
a.escribirArch()
a.escribirArch()
a.escribirArch()
a.Leerarchivo()