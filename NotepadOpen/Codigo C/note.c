#include <windows.h>
#include <stdlib.h>
#include <stdio.h>

__declspec(dllexport) void ExecuteSwitch(int switchValue) {
    switch (switchValue) {
        case 1:
            ShellExecute(NULL, "open", "notepad.exe", NULL, NULL, SW_SHOWNORMAL);
            break;
        case 2:
            printf("nenhuma funcao definida na case 2\n");
            break;
        default:
            printf("nenhuma funcao definida aqui\n");
            break;
    }
}
