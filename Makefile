# Macros

CC     = gcc
CFLAGS = -c
OFLAGS = -o

DIR_OUTPUT        = ./build
DIR_SRC           = ./src

NOMBRE_EJECUTABLE_1 = programa1
NOMBRE_EJECUTABLE_2 = programa2

all: release

# Compilación principal de los ejecutables
release:
	@echo 'Compilando target: $@'
	@echo "Creando el directorio ./build"
	mkdir -p $(DIR_OUTPUT)
	@echo ' '
	@echo "####################################"
	@echo "Compilando programas"

	$(CC) $(OFLAGS) $(DIR_OUTPUT)/programa1 $(DIR_SRC)/programa1.c -w
	$(CC) $(OFLAGS) $(DIR_OUTPUT)/programa2 $(DIR_SRC)/programa2.c -w



	@echo ' '
	@echo "####################################################"
	@echo " Los programas han sido compilados correctamente"
	@echo "####################################################"
	
	@echo ' '
	@echo ">>> Programa compilado en el directorio $(DIR_OUTPUT)"
	@echo ">>> Ingrese al directorio '"$(DIR_OUTPUT)"' mediante el comando cd"
	@echo ">>> Ejecute el programa 1 haciendo: ./$(NOMBRE_EJECUTABLE_1)"
	@echo ">>> Ejecute el programa 2 haciendo: ./$(NOMBRE_EJECUTABLE_2)"
	@echo ">>> Si el programa es ejecutado desde cualquier otro directorio, algunas funcionalidades no serán ejecutadas"
	@echo ' '
 	

clear:
	rm -rf $(DIR_OUTPUT)/*
	-@echo ' ' 
	@echo ">>> Archivos compilados y objetos eliminados correctamente"
