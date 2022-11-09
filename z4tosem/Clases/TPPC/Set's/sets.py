posi=0
otro="si"
Lista=[{1,2,3},{2,4,5},{544,4334,454}]

def menu():
    print("""
                Lista de operaciones:
                0.- Escribir lista
                1.- Mostrar lista y tamaño
                2.- Ordenar lista
                3.- Dar de baja/borrar elemento
                4.- Añadir elemento
                5.- Insertar elemento en 'x' posición
            """)
while otro=="si":
    menu()
    numero = int(input())

    if numero==0:
        print("Cuantos elementos tendrá la lista?")
        elementos = int(input())
        for a in range(elementos):
            print("Ingrese el elemento que agregará")
            agregar = input()
            sets.add(agregar)
    elif numero == 1:
        print("El numero de elementos es", len(sets))
        for 