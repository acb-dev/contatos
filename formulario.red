Red [ ]

formulario: layout [
    title "Contatos"
    size 980x520
    space 3x3
    below
    titulo: h5 middle 900 "Cadastro de Contatos"
    across
    button "Novo"        [novo]
	button "Consultar"   [consultar]
    button "Procurar"    [quit]
    button "Editar"      [editar]
    button "Gravar"      [gravar]
    button "<< Primeiro" [quit]
    button "< Anterior"  [quit]
    button "Próximo >"   [quit]
    button "Último >>"   [quit]
    button "Excluir"     [excluir]
    button "Imprimir"    [quit]
    button "Listar"      [quit]
    button "Sair"        [quit]    
    return
    foto: image 100x100 %fotos\foto.jpg
    at 30x200
    button "Foto" [quit]
    origin 160x90
	text middle "Nº"
	numRegistro: text middle 40 ""
    text middle "Chave Primaria"
    chavePrimaria: text middle 185 ""    
    text middle 45 "Apelido"
    apelido: field 300 on-enter [set-focus nome]	
    return
    space 3X10
    text middle "Nome"
    nome: field 400  on-enter [set-focus diaNasc]
    text middle "Sexo"
    masculino: radio "Masculino"
    feminino:  radio "Feminino"
    return
    text middle "Nascimento(dd/mm/aaaa)"
    diaNasc: field 20 on-enter [set-focus mesNasc]
    text middle 10 "/"
    mesNasc: field 20 on-enter [set-focus anoNasc]
    text middle 10 "/"
    anoNasc: field 40
        on-enter [
        do etarizar
        ;idade/text: to-string etarizar to-integer diaNasc/text to-integer mesNasc/text to-integer anoNasc/text
        ;anos/text: " anos"
        set-focus naturalidade
        ]
    on-unfocus [do etarizar]
    text middle 30 "Idade"
    idade: text middle 18 ""
	anos: text middle 30 ""
	text middle "Naturalidade"
	naturalidade: field 200 on-enter [set-focus ufn]
    text middle 20 "UF"
    ufn: drop-down data[
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
    on-enter [set-focus ddd]
    return
    across
    text middle 25 "DDD"
    ddd: field 30 on-enter [set-focus telefone1]
    text middle 45 "Telefone"
    text middle 6 "9"
    telefone1: field 40 on-enter [set-focus telefone2]
    text middle 6 "-"
    telefone2: field 40 on-enter [set-focus email]
    text middle 30 "Email"
    email: field 400 on-enter [set-focus tipo]
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
    on-enter [set-focus cep1]
    text middle 30 "CEP"
    cep1: field 42  on-enter [set-focus cep2]
    text middle 6 "-"
    cep2: field 30  on-enter [set-focus obs1]
    return
    text middle "Observação"
	space 0x0
	return
    obs1: field 650 no-border
		on-enter [set-focus obs2]
		on-key-down [if event/key = 'down [set-focus obs2]]
	return
	obs2: field 650 no-border
		on-enter [set-focus obs3]
		on-key-down [
			case [
				event/key = 'down [set-focus obs3]
				event/key = 'up   [set-focus obs1]
			]
		]	
	return
	obs3: field 650 no-border
		on-enter [set-focus obs4]
		on-key-down [
			case [
				event/key = 'down [set-focus obs4]
				event/key = 'up   [set-focus obs2]
			]
		]		
	return
	obs4: field 650 no-border
		on-enter [set-focus obs5]
		on-key-down [
			case [
				event/key = 'down [set-focus obs5]
				event/key = 'up   [set-focus obs3]
			]
		]			
	return
	obs5: field 650 no-border
		on-key-down [if event/key = 'up [set-focus obs4]]
    space 5x5
    text ""
    return
    rich-text middle 320x20 "Desenvolvido por Alexandre Barbosa +55 31 9.8792-4184" with [
    data: [17x18 bold 255.0.0]
    ]
	
	do [desabilitar]
	
     button
        underline
        font [color: blue]
        "www.acbdev.dev.br"
        [browse https://www.acbdev.dev.br]	
]        	
			

	
    formulario/menu: [
        "Gerenciar" [
            "Novo"       novo
			"Consultar"  consultar
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
			if event/picked = 'novo       [novo]
			if event/picked = 'consultar  [consultar]
			if event/picked = 'editar     [editar]
			if event/picked = 'gravar     [gravar]
			if event/picked = 'excluir    [excluir]
			if event/picked = 'primeiro   [quit]
			if event/picked = 'anterior   [quit]
			if event/picked = 'proximo    [quit]
			if event/picked = 'ultimo     [quit]
			if event/picked = 'procurar   [quit]
			if event/picked = 'imprimir   [quit]
			if event/picked = 'listar     [quit]]
			
		on-down: func [face [object!] event [event!]] [
			editar]
		
		on-key-down: func [face [object!] event [event!]] [
			
		if	event/key = 'F1         [browse https://www.acbdev.dev.br]
        if	event/key = 'F2         [browse https://www.acbdev.dev.br]
        if	event/key = 'insert     [novo]       
	]]	

			
view/flags formulario [resize]
