*Settings*
Documentation       Suite de testes relativos a Pix

Library            ${EXECDIR}/resources/factories/pix.py

Resource            ${EXECDIR}/resources/base.robot

Test Setup          Start Session
Test Teardown       End Session

*Test Cases*
Deve realizar PIX com sucesso
    [Tags]          pix_valid

    ${pix_data}     Factory Valid Pix Data

    Go To PIX Form
    Perform PIX  ${pix_data}
    Submit PIX Form
    Check Balance  ${pix_data}[newBalance]
    PIX Should Be Visible  ${pix_data}

Não deve permitir PIX com valor zerado
    [tags]          pix_zero

    ${pix_data}     Factory Zero Pix Data

    Go To PIX Form
    Perform PIX  ${pix_data}
    Submit PIX Form
    PIX Without Success   Oops. Transferir ZERO é osso hein... 

PIX com valor negativo
    [tags]      pix_negative

    ${pix_data}     Factory Negative Pix Data

    Go To PIX Form
    Perform PIX  ${pix_data}
    Submit PIX Form
    PIX Without Success   Oops. Valor para PIX incorreto... 



