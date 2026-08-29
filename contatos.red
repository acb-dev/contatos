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
    size 700x400
    below
    text ""    
    across
    button "Novo" [quit]
    button "Procurar" [quit]
    button "Editar" [quit]
    button "Imprimir" [quit]
    button "Sair" [quit]   
    return
    below
    text ""
    h5 "Cadastre seus contatos" 
    across
    text "Nome"
    nome: field 400
    return
    text "DDD"
    ddd: field 30
    text "Telefone"    
    telefone1: field 45 "9"
    text "-"
    telefone2: field 45   
    return
    text "Rua"
    rua: field 400
    text "n°"
    numero: field 60
    return
    rich-text 400x20 "Desenvolvido por Alexandre Barbosa +55 31 9.98792-4184" with [
        data: [17x17 bold]
    ]    
    ]

    [resize]