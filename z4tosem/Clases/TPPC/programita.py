#Función Print
print(1,2,3)
1 2 3
print(1,2,3,sep="x")
1x2x3
print(1,2,3,sep="/",end=".")
1/2/3.
print("Hola, hoy me comí",16,"tacos")
Hola, hoy me comí 16 tacos
print("Hola, hoy me comí "+str(6)+" tacos")
Hola, hoy me comí 6 tacos
#Formatear cadena de caracteres
print("%d %f %s" % (10.5,10.5,10.5))
10 10.500000 10.5
rint("%s %o %x" % (bin(5),5,5))
0b101 5 5
print("El producto %s cantidad=%d precio=%.2f"%("está nuevo, su",23,13.456))
El producto está nuevo, su cantidad=23 precio=13.46
#Función format()
print(format(5,"b"),format(5,"o"),format(5,"x"))
101 5 5
print(format(2.345,".2f"))
2.35
#Funcion type()
type(5)
<class 'int'>
type(3434.545)
<class 'float'>
type([1,23,5,8,8,6,5,54,5,5,5])
<class 'list'>
type(int)
<class 'type'>
#Función isinstance()
isinstance(5,str)
False
isinstance(4.4548415, float)
True
isinstance(ahsas, list)
Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    isinstance(ahsas, list)
NameError: name 'ahsas' is not defined
type(asas)
Traceback (most recent call last):
  File "<pyshell#23>", line 1, in <module>
    type(asas)
NameError: name 'asas' is not defined
type("asjas")
<class 'str'>
#Función isinstance()

isinstance(5,str)
False
isinstance(4.4548415, float)
True
isinstance("ahsas", list)
False
