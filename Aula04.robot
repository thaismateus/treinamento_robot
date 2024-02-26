*** Variables ***

@{NUMEROS}    0    1    2    3    4    5    6    7    8    9    10    

*** Keywords ***

Estou no número X
    FOR  ${count}    IN RANGE  0  11
        IF  ${count}==5
            Log To Console   "Estou no número: ${count}"
        ELSE IF  ${count}==8
            Log To Console   "Estou no número: ${count}"
        ELSE
            Log To Console     "Não imprime"
        END
    END             

*** Test Cases ***

Impressão dos números
    Estou no número X