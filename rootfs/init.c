#include <stdio.h>
#include <unistd.h>

int main(void) {
    printf("Welcome to Ceder Linux!\n");
    printf("System initialization complete.\n");

    while (1) {
        sleep(1);
    }

    return 0;
}
