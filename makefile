ASM_SOURCES := instruction_nop_100.s
C_SOURCES := main.c
NAME := get_a_better_keyboard
CC := gcc

# Verify your binary by running
# objdumb -d executable name > output.s

.PHONY: build
$(NAME):
	$(CC) $(C_SOURCES) $(ASM_SOURCES) -o $(NAME)

.PHONY: clean
clean:
	rm -rf $(NAME)