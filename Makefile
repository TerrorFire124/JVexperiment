# Definir el compilador a usar
CXX = g++

# Definir las opciones del compilador
CXXFLAGS = -Wall -Wextra

# Definir el nombre del archivo ejecutable
TARGET = JVexperiment

# Regla para construir el ejecutable a partir de los archivos objeto
$(TARGET): main.o
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.o

# Regla para construir main.o a partir de main.cpp
main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

# Regla para limpiar los archivos generados
clean:
	rm -f $(TARGET) *.o
