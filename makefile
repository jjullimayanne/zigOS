# Nome do executável
TARGET = main

# Compilador
CC = gcc

# Flags de compilação
CFLAGS = -Wall

# Diretório onde o main.c está localizado
SRC_DIR = src

# Regras de compilação
all: $(TARGET)

$(TARGET): $(SRC_DIR)/main.o
	$(CC) -o $(TARGET) $(SRC_DIR)/main.o

$(SRC_DIR)/main.o: $(SRC_DIR)/main.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.c -o $(SRC_DIR)/main.o

# Limpeza dos arquivos objeto e do executável
clean:
	rm -f $(SRC_DIR)/*.o $(TARGET)
