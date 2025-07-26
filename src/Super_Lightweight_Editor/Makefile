# Makefile đa năng: build C hoặc C++ tùy theo FILE=

# Tên file truyền vào, ví dụ: FILE=main.cpp
FILE ?= main.cpp

TARGET := $(basename $(FILE))

EXT := $(suffix $(FILE))

ifeq ($(EXT),.c)
	COMPILER := gcc
	CFLAGS := -Wall -O2 -std=c23
else ifeq ($(EXT),.cpp)
	COMPILER := g++
	CFLAGS := -Wall -O2 -std=c++23
else
	$(error ❌ No support for format $(EXT). Support .c or .cpp)
endif

all:
	@echo 🔨 Compiling $(FILE) with $(COMPILER)...
	$(COMPILER) $(CFLAGS) $(FILE) -o $(TARGET)
	@echo ✅ Done! Output: ./$(TARGET)

clean:
	@echo 🧹 Clearing file output...
	@rm -f $(TARGET)

