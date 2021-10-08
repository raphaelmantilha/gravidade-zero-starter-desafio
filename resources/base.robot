*Settings*
Documentation       Arquivo base do projeto

Library             Browser
Library             DateTime

Resource            actions.robot

*Variables*
${BASE_URL}         https://nbank.vercel.app/

*Keywords*
Start Session       
    New Browser     chromium    headless=false
    New Page        ${BASE_URL}

End Session
    Take Screenshot