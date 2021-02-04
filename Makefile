# Name of the project
PROJECT_NAME = actvity2b

# Output directory
BUILD = build

# All source code files
SRC = main.c




# All include folders with header files
#INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME)



# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run test doc clean all

all: $(SRC) $(BUILD)
	gcc $(SRC) -o $(PROJECT_OUTPUT).out

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out



# Remove all the built files, invoke by `make clean`
clean:
	rm -rf $(BUILD)

# Create new build folder if not present
$(BUILD):
	mkdir build