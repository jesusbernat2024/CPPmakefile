# Archivos de código fuente
SOURCES = .\cgi-bin\funciones.cpp .\cgi-bin\funciones2.cpp

# Nombre del ejecutable
EXECUTABLE = .\cgi-bin\funciones.cgi

# Regla por defecto para compilar y enlazar el programa
all: $(EXECUTABLE)

# Regla para generar el ejecutable
$(EXECUTABLE): $(SOURCES)
	g++ -o $(EXECUTABLE) $(SOURCES) -lnetapi32

# Limpiar archivos temporales
clean:
	rm -f $(EXECUTABLE)
