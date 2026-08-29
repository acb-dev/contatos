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
    size 800x600
    below
    space 3x3
    text ""    
    across
    button "Novo" [quit]
    button "Procurar" [quit]
    button "Editar" [quit]
    button "Gravar" [quit]
    button "Imprimir" [quit]
    button "Sair" [quit]   
    return
    below
    text ""
    h5 "Cadastre o contato" 
    across
    text "Nome"
    nome: field 400
    text "Nascimento(dd/mm/aaaa)"
    space 3x3
    dd: field 20
    text "/"
    mm: field 20
    text "/"
    aaaa: field 40
    return
    text "DDD"
    ddd: field 30
    text "Telefone"    
    telefone1: field 45 "9"
    text "-"
    telefone2: field 45   
    return
    text "Email"
    email: field 400
    return
    text "Rua"
    rua: field 400
    text "n°"
    numero: field 60
    return
    text "Complemento" 
    complemento: field 120
    text "Bairro" 
    bairro: field 200
    return
    text "Cidade"
    cidade: field 200
    text "UF"
    uf: drop-down data[
        "Acre (AC)"
        "Alagoas (AL)"
        "Amapá (AP)"
        "Amazonas (AM)"
        "Bahia (BA)"
        "Ceará (CE)"
        "Distrito Federal (DF)"
        "Espírito Santo (ES)"
        "Goiás (GO)"
        "Maranhão (MA)"
        "Mato Grosso (MT)"
        "Mato Grosso do Sul (MS)"
        "Minas Gerais (MG)"
        "Pará (PA)"
        "Paraíba (PB)"
        "Paraná (PR)"
        "Pernambuco (PE)"
        "Piauí (PI)"
        "Rio de Janeiro (RJ)"
        "Rio Grande do Norte (RN)"
        "Rio Grande do Sul (RS)"
        "Rondônia (RO)"
        "Roraima (RR)"
        "Santa Catarina (SC)"
        "São Paulo (SP)"
        "Sergipe (SE)"
        "Tocantins (TO)" 
    ]
    return
    text "Observação"
    observacao: area white 600x150
    space 5x5
    text ""
    return
    rich-text 400x20 "Desenvolvido por Alexandre Barbosa +55 31 9.98792-4184" with [
        data: [17x17 bold]
    ]    
    ]

    [resize]