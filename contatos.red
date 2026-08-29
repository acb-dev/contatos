Red [
    Title:   "Contatos"
    Author:  "Alexandre Barbosa"
    Date:    24-Aug-2026
    File:    %contatos.red
    Version: 0.1.0
    Icon: %\midia\contatos.ico
    Needs:   'View
]

view/flags [    
    title "Contatos"
    size 600x400
    button "Novo" [quit]
    button "Procurar" [quit]
    button "Editar" [quit]
    button "Imprimir" [quit]
    button "Sair" [quit]   
    return
    below
    text "Olá, mundo gráfico em Red" 
    rich-text 400x20 "Desenvolvido por Alexandre Barbosa +55 31 9.98792-4184" with [
        data: [17x17 bold]
    ]    
    ]

    [resize]