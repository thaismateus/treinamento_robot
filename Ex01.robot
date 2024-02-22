*** Variables ***

#Comentário de teste 

&{PESSOA}   nome=Thais  sobrenome=Mateus  idade=32  cidade=Udia  UF=MG

@{FRUTAS}   uva   manga  laranja  banana 

*** Keywords ***

Criar um e-mail 
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    ${EMAIL_COMPLETO}     Catenate     ${NOME}_${SOBRENOME}_${IDADE}@robot.com  
    [Return]     ${EMAIL_COMPLETO} 

Contar de 0 a 9 
    FOR     ${numero}    IN RANGE    0     9    
        Log To Console   "Estou no número" ${numero} de 0 a 10
    END
    
5 países
    @{paises}    Create List    Brasil    Japão    China    Canada    EUA
    FOR     ${pais}    IN     @{paises}
        Log To Console    ${pais}      
    END


    

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
        
Criar e-mail contendo nome sobrenome e idade
        ${RETORNO}   Criar um e-mail    ${PESSOA}[nome]     ${PESSOA}[sobrenome]      ${PESSOA}[idade]  
        Log To Console     ${RETORNO} 

Imprimi contador 
     Contar de 0 a 9    

Imprimi países
    5 países

