*Settings*
Documentation       Ações customizados do Ninja Bank

*Keywords*
Check Balance
    [Arguments]     ${balance}
    
    Get Text            css=a[class=navbar-item]    contains    seu saldo é R$ ${balance}          

Go To PIX Form
    Click               text=Fazer PIX

Perform PIX
    [Arguments]        ${PIX_data} 

    Select Options By   css=.select select      text        ${PIX_data}[bank]   
    Fill Text           id=chave-pix            ${PIX_data}[key]
    Fill Text           id=valor                ${PIX_data}[value]

Submit PIX Form
    Click               css=button >> text= Enviar PIX 

PIX Should Be Visible
    [Arguments]     ${PIX_data}

    ${date}             Get Current Date
    ${date}             Convert Date    ${date}     result_format=%d/%m/%Y  
   
   ${element}      Set Variable        xpath=//span[contains(text(),"08/10/2021")]/../..

    Get Text        ${element}          contains        ${PIX_data}[bank] 
    Get Text        ${element}          contains        ${PIX_data}[key] 
    Get Text        ${element}          contains        ${PIX_data}[value]      

PIX Without Success 
    [Arguments]     ${expected_message}

    Get Text        css=.media-content  equal           ${expected_message}
