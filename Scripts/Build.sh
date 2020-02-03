cd ../src/
clang *.c -fsanitize=address -Werror -Weverything -pedantic-errors -o main.out
cd ../Scripts/