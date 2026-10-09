Red [ ]

formulario: layout [
    title "Contatos"
    size 950x520
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
    button "Excluir" [quit]
    button "Imprimir" [quit]
    button "Listar" [quit]
    button "Sair" [quit]
    return
    h5 "Cadastre o contato"
    return
    foto: image 100x100 %fotos\foto.jpg
    at 30x200
    button "Foto" [quit]
    origin 160x90
    text middle "Chave Primaria"
    chavePrimaria: text middle 185 ""
    do [chavePrimaria/text: do chavear]
    text middle 45 "Código"
    codigo: field 100
    do [codigo/text: do codificar]
    text middle 45 "Apelido"
    apelido: field 300 on-enter [set-focus nome]
    return
    space 3X10
    text middle "Nome"
    nome: field 400  on-enter [set-focus dd]
    text middle "Sexo"
    sexo: panel [
    masculino: radio "Masculino"
    feminino:  radio "Feminino"
    ]
    return
    text middle "Nascimento(dd/mm/aaaa)"
    dd: field 20 on-enter [set-focus mm]
    text middle 10 "/"
    mm: field 20 on-enter [set-focus aaaa]
    text middle 10 "/"
    aaaa: field 40
        on-enter [
        idade/text: to-string etarizar to-integer dd/text to-integer mm/text to-integer aaaa/text
        anos/text: " anos"
        set-focus ddd
        ]
    on-unfocus [idade/text: to-string etarizar to-integer dd/text to-integer mm/text to-integer aaaa/text
                anos/text: " anos"
    ]
    text middle 30 "Idade"
    idade: text middle 18 ""
	anos: text middle 30 ""
    return
    across
    text middle "DDD"
    ddd: field 30 on-enter [set-focus telefone1]
    text middle 45 "Telefone"
    text middle 6 "9"
    telefone1: field 40 on-enter [set-focus telefone2]
    text middle 6 "-"
    telefone2: field 40 on-enter [set-focus email]
    text middle 30 "Email"
    email: field 400 on-enter [set-focus rua]
    return
    text middle 24 "Tipo"
     tipo: drop-down 90 data[
            "Rua"
            "Avenida"
            "Praça"
            "Beco"
            "Alameda"
            "Rodovia"
            "Viela"
            "Viaduto"
            "Chácara"
            "Fazenda"
            "Estrada"
            "Sítio"
        ]
    on-enter [set-focus rua]
    text middle "Logradouro"
    rua: field 450 on-enter [set-focus numero]
    text middle 20 "n°"
    numero: field 60 on-enter [set-focus complemento]
    return
    text middle "Complemento"
    complemento: field 180 on-enter [set-focus bairro]
    text middle 35 "Bairro"
    bairro: field 200 on-enter [set-focus cidade]
    return
    text middle "Cidade"
    cidade: field 200 on-enter [set-focus uf]
    text middle 20 "UF"
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
    on-enter [set-focus observacao]
    text middle 30 "CEP"
    cep1: field 42  on-enter [set-focus cep2]
    text middle 6 "-"
    cep2: field 30  on-enter [set-focus observacao]
    return
    text middle "Observação"
    observacao: area white 685x150
    space 5x5
    text ""
    return
    rich-text middle 320x20 "Desenvolvido por Alexandre Barbosa +55 31 9.8792-4184" with [
    data: [17x18 bold 255.0.0]
    ]
     button
        underline
        font [color: blue]
        "www.acbdev.dev.br"
        [browse https://www.acbdev.dev.br]
    ]

    [resize]

    formulario/menu: [
        "Gerenciar" [
            "Novo"       novo
            "Editar"     editar
			"Gravar"     gravar
			---
			---
			"Excluir"    excluir
        ]
		"Navegar" [
			"Primeiro"   primeiro
			"Anterior"   anterior
			"Proximo"    proximo
			"Último"     ultimo 
			"Procurar"   procurar
		]
		"Relatórios" [
			"Imprimir"   imprimir
			"Listar"     listar
		]
		"Sair" sair
    ]

     formulario/actors: make object! [
            on-menu: func [face [object!] event [event!]][
                if event/picked = 'sair     [quit]
                if event/picked = 'editar   [quit]
				if event/picked = 'gravar   [quit]
				if event/picked = 'excluir  [quit]
				if event/picked = 'primeiro [quit]
				if event/picked = 'anterior [quit]
				if event/picked = 'proximo  [quit]
				if event/picked = 'ultimo   [quit]
				if event/picked = 'procurar [quit]
				if event/picked = 'imprimir [quit]
				if event/picked = 'listar   [quit]
        ]]

view formulario