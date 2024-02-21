*** Variables ***

#Comentário de teste 

&{PESSOA}   nome=Thais  sobrenome=Mateus  idade=32  cidade=Udia  UF=MG

@{FRUTAS}   uva   manga  laranja  banana 

*** Test Cases ***

Imprimi Dicionário
        Log To Console    ${PESSOA} [nome]
        Log To Console    ${PESSOA} [sobrenome]
        Log To Console    ${PESSOA} [idade]
        Log To Console    ${PESSOA} [cidade]
        Log To Console    ${PESSOA.UF}

Imprimi Lista de Frutas       
        Log To Console    ${FRUTAS}[0]
        Log To Console    ${FRUTAS}[1]
        Log To Console    ${FRUTAS}[2]
        Log To Console    ${FRUTAS}[3]
        




