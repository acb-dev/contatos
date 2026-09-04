Red [
    Title:   "Contatos"
    Author:  "Alexandre Barbosa"
    Date:    24-Aug-2026
    File:    %contatos.red
    Version: 0.1.0
    Icon: %\midia\contatos.ico
    Needs:   'View
]

do %formulario.red

view/flags [    
    title "Contatos"
    size 900x600
    space 3x3
    below
    text ""    
    across
    button "Novo" [quit]
    button "Procurar" [quit]
    button "Editar" [quit]
    button "Gravar" [quit]
    button "Primeiro" [quit]    
    button "Anterior" [quit]
    button "Próximo" [quit]
    button "Último" [quit]  
    button "Imprimir" [quit]
    button "Listar" [quit]
    button "Sair" [quit] 
    return
    below            
    h5 "Cadastre o contato"
    across
    text "Chave Primaria"
    chavePrimaria: text 185 ""
    do [chavePrimaria/text: to string! now/precise] 
    text 45 "Código"
    codigo: field 100
    do [codigo/text: do codificar[]]
    text 45 "Apelido"
    apelido: field 300
    return   
    text "Nome"
    nome: field 400    
    text "Nascimento(dd/mm/aaaa)"   
    dd: field 20
    text 10 "/"
    mm: field 20
    text 10 "/"
    aaaa: field 40
    text 30 "Idade"    
    idade: text 20 ""
    do [idade/text: to string! do idadizar[] ]    
    return
    across
    text "DDD"
    ddd: field 30
    text 45 "Telefone"    
    telefone1: field 45 "9"
    text 10 "-"
    telefone2: field 45   
    text 30 "Email"
    email: field 400
    return
    text "Rua"
    rua: field 400
    text 20 "n°"
    numero: field 60
    return
    text "Complemento" 
    complemento: field 120
    text 35 "Bairro" 
    bairro: field 200
    return
    text "Cidade"
    cidade: field 200
    text 20 "UF"
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