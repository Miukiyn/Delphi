#include <stdio.h>
#include <stdlib.h>

__declspec(dllexport) int lerNumero(int numero) {
    
    //printf("Digite um numero inteiro: ");

    // Faz a leitura do numero inteiro fornecido pelo usuario
    if (scanf("%d", &numero)) {
        // Se a leitura for bem-sucedida, verifica se e par ou impar
        if (numero % 2 == 0) {
            return 1;  // 1 representa par
        } else {
            return 0;  // 0 representa impar
        }
    } else {
        // Se a leitura falhar, retorna -1 para indicar erro
        return -1;
    }
}



__declspec(dllexport) void liberarMemoria(char* ptr) {
    free(ptr);
}
