class archivitos:
    def crearArch1 (self):
        archivo = open ("archivo.doc","w")
        archivo.close
        print("Archivo creado")
    def crearArch2 (self):
        archivo = open ("archivo.xls","w")
        archivo.close
        print("Archivo creado")
    def crearArch3 (self):
        archivo = open ("archivo.pdf","w")
        archivo.close
        print("Archivo creado")
    
a=archivitos()
a.crearArch1()
a.crearArch2()
a.crearArch3()
