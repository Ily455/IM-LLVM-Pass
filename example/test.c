#include <stdio.h>

// Define a struct
struct MyStruct {
    int x;
    int y;
};

// Define a global variable
int global_var = 10;

// Define a function
void my_function(int a, int b) {
    printf("Sum: %d\n", a + b);
}

int main() {
    // Use the struct
    struct MyStruct s;
    s.x = 5;
    s.y = 7;

    // Use the global variable
    printf("Global variable: %d\n", global_var);

    // Use the function
    my_function(s.x, s.y);

    return 0;
}
