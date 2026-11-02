Red [ ]

novo:
[
	eNovo: true
	titulo/text: "Cadastre o novo contato"
	do limpar
	numRegistro/text: to-string do numerar
	chavePrimaria/text: do chavear
	nome/enabled?: true
	do habilitar
]

consultarx:
[
	eNovo: false

	do limpar
	do desabilitar

	ficha: load request-file/title/file/filter "Escolha o contato" %"./reg/" [ "Contatos" "*.ficha"]

	xnumRegistro: ficha/1
	xchavePrimaria: ficha/2
	xapelido: ficha/3
	xnome: ficha/4
	xdiaNasc: ficha/6
	xmesNasc: ficha/7
	xanoNasc: ficha/8
	xnaturalidade: ficha/9
	xufn: ficha/10
	xddd: ficha/11
	xtelefone1: ficha/12
	xtelefone2: ficha/13
	xemail: ficha/14
	xtipo: ficha/15
	xrua: ficha/16
	xnumero: ficha/17
	xcomplemento: ficha/18
	xbairro: ficha/19
	xcidade: ficha/20
	xuf: ficha/21
	xcep1: ficha/22
	xcep2: ficha/23
	xobs1: ficha/24
	xobs2: ficha/25
	xobs3: ficha/26
	xobs4: ficha/27
	xobs5: ficha/28


	case
	[
		ficha/5 = "M" masculino/data: true
		ficha/5 = "F" feminino/data:  true
	]

	numRegistro/text: xnumRegistro
	chavePrimaria/text: xchavePrimaria
	apelido/text: xapelido
	nome/text: xnome
	diaNasc/text: xdiaNasc
	mesNasc/text: xmesNasc
	anoNasc/text: xanoNasc
	naturalidade/text: xnaturalidade
	ufn/text: xufn
	ddd/text: xddd
	telefone1/text: xtelefone1
	telefone2/text: xtelefone2
	email/text: xemail
	tipo/text: xtipo
	rua/text: xrua
	numero/text: xnumero
	complemento/text: xcomplemento
	bairro/text: xbairro
	cidade/text: xcidade
	uf/text: xuf
	cep1/text: xcep1
	cep2/text: xcep2
	obs1/text: xobs1
	obs2/text: xobs2
	obs3/text: xobs3
	obs4/text: xobs4
	obs5/text: xobs5

	do etarizar
	;idade/text: to-string etarizar to-integer diaNasc/text to-integer mesNasc/text to-integer anoNasc/text
	;anos/text: " anos"

	show formulario
]



consultar5:
[
	eNovo: false

	do limpar
	do desabilitar

	ficha: load request-file/title/file/filter "Escolha o contato" %"./reg/" [ "Contatos" "*.ficha"]

	case
	[
		ficha/5 = "M" masculino/data: true
		ficha/5 = "F" feminino/data:  true
	]

	numRegistro/text: ficha/1
	chavePrimaria/text: ficha/2
	unless apelido/text = none [apelido/text ficha/3]
	nome/text: ficha/4
	diaNasc/text: to-string ficha/6
	mesNasc/text: to-string ficha/7
	anoNasc/text: to-string ficha/8
	unless naturalidade/text = none [naturalidade/text: ficha/9]
	unless ufn/text = none [ufn/text: ficha/10]
	unless ddd/text = none [ddd/text: ficha/11]
	unless telefone1/text = none [telefone1/text: ficha/12]
	unless telefone2/text = none [telefone2/text: ficha/13]
	unless email/text = none  [email/text: ficha/14]
	unless tipo/text = none  [tipo/text: ficha/15]
	unless rua/text = none  [rua/text: ficha/16]
	unless numero/text = none [numero/text: ficha/17]
	unless complemento/text = none [complemento/text: ficha/18]
	unless bairro/text = none  [bairro/text: ficha/19]
	unless cidade/text = none [cidade/text: ficha/20]
	unless uf/text = none [uf/text: ficha/21]
	unless cep1/text = none  [cep1/text: ficha/22]
	unless cep2/text = none  [cep2/text: ficha/23]
	unless obs1/text = none  [obs1/text: ficha/24]
	unless obs2/text = none  [obs2/text: ficha/25]
	unless obs3/text = none  [obs3/text: ficha/26]
	unless obs4/text = none  [obs4/text: ficha/27]
	unless obs5/text = none  [obs5/text: ficha/28]


	do etarizar
	;idade/text: to-string etarizar to-integer diaNasc/text to-integer mesNasc/text to-integer anoNasc/text
	;anos/text: " anos"

	show formulario
]

consultar:
[
	eNovo: false

	do limpar
	do desabilitar

	ficha: load request-file/title/file/filter "Escolha o contato" %"./reg/" [ "Contatos" "*.ficha"]

	case
	[
		ficha/5 = "M" masculino/data: true
		ficha/5 = "F" feminino/data:  true
	]

	numRegistro/text: ficha/1
	chavePrimaria/text: ficha/2
	apelido/text: ficha/3
	nome/text: ficha/4
	diaNasc/text: ficha/6
	mesNasc/text: ficha/7
	anoNasc/text: ficha/8
	naturalidade/text: ficha/9
	ufn/text: ficha/10
	ddd/text: ficha/11
	telefone1/text: ficha/12
	telefone2/text: ficha/13
	email/text: ficha/14
	tipo/text: ficha/15
	rua/text: ficha/16
	numero/text: ficha/17
	complemento/text: ficha/18
	bairro/text: ficha/19
	cidade/text: ficha/20
	uf/text: ficha/21
	cep1/text: ficha/22
	cep2/text: ficha/23
	obs1/text: ficha/24
	obs2/text: ficha/25
	obs3/text: ficha/26
	obs4/text: ficha/27
	obs5/text: ficha/28


	do etarizar
	;idade/text: to-string etarizar to-integer diaNasc/text to-integer mesNasc/text to-integer anoNasc/text
	;anos/text: " anos"

	show formulario
]

	
consultarx:
[
	eNovo: false

	do limpar
	do desabilitar

	ficha: load request-file/title/file/filter "Escolha o contato" %"./reg/" [ "Contatos" "*.ficha"]
		
	case
	[
		ficha/5 = "M" masculino/data: true
		ficha/5 = "F" feminino/data:  true
	]

	numRegistro/text: ficha/1
	chavePrimaria/text: ficha/2
	either apelido/text = none [apelido/text: to-string #"^(00)"] [apelido/text ficha/3]
	nome/text: ficha/4
	diaNasc/text: ficha/6
	mesNasc/text: ficha/7
	anoNasc/text: ficha/8
	either naturalidade/text = none [naturalidade/text: to-string #"^(00)"] [naturalidade/text: ficha/9]
	either ufn/text = none [ufn/text: to-string #"^(00)"] [ufn/text: ficha/10]
	either ddd/text = none [ddd/text: to-string #"^(00)"] [ddd/text: ficha/11]
	either telefone1/text = none [telefone1/text: to-string #"^(00)"] [telefone1/text: ficha/12]
	either telefone2/text = none [telefone2/text: to-string #"^(00)"] [telefone2/text: ficha/13]
	either email/text = none [email/text: to-string #"^(00)"] [email/text: ficha/14]
	either tipo/text = none [tipo/text: to-string #"^(00)"] [tipo/text: ficha/15]
	either rua/text = none [rua/text: to-string #"^(00)"] [rua/text: ficha/16]
	either numero/text = none [numero/text: to-string #"^(00)"] [numero/text: ficha/17]
	either complemento/text = none [complemento/text: to-string #"^(00)"] [complemento/text: ficha/18]
	either bairro/text = none [bairro/text: to-string #"^(00)"] [bairro/text: ficha/19]
	either cidade/text = none [cidade/text: to-string #"^(00)"] [cidade/text: ficha/20]
	either uf/text = none [uf/text: to-string #"^(00)"] [uf/text: ficha/21]
	either cep1/text = none [cep1/text: to-string #"^(00)"] [cep1/text: ficha/22]
	either cep2/text = none [cep2/text: to-string #"^(00)"] [cep2/text: ficha/23]
	either obs1/text = none [obs1/text: to-string #"^(00)"] [obs1/text: ficha/24]
	either obs2/text = none [obs2/text: to-string #"^(00)"] [obs2/text: ficha/25]
	either obs3/text = none [obs3/text: to-string #"^(00)"] [obs3/text: ficha/26]
	either obs4/text = none [obs4/text: to-string #"^(00)"] [obs4/text: ficha/27]
	either obs5/text = none [obs5/text: to-string #"^(00)"] [obs5/text: ficha/28]


	do etarizar
	;idade/text: to-string etarizar to-integer diaNasc/text to-integer mesNasc/text to-integer anoNasc/text
	;anos/text: " anos"

	show formulario	
]

gravar:
[
	nomeArquivo: rejoin ["reg\"nome/text".ficha"]

	sexo:   case
			[
				masculino/data = true "M"
				feminino/data  = true "F"
			]

	xdiaNasc:       either diaNasc/text         = none              ["0"]                 [diaNasc/text]
	xmesNasc:       either mesNasc/text         = none              ["0"]                 [mesNasc/text]
	xanoNasc:       either anoNasc/text         = none              ["0"]                 [anoNasc/text]
	xapelido:       either apelido/text         = none              [to-string #"^(00)"]  [apelido/text]
	xnaturalidade:  either naturalidade/text    = none              [to-string #"^(00)"]  [naturalidade/text]
	xufn:           either ufn/text             = none              [to-string #"^(00)"]  [ufn/text]
	xddd:           either ddd/text             = none              [to-string #"^(00)"]  [ddd/text]
	xtelefone1:     either telefone1/text       = none              [to-string #"^(00)"]  [telefone1/text]
	xtelefone2:     either telefone2/text       = none              [to-string #"^(00)"]  [telefone2/text]
	xemail:         either email/text           = none              [to-string #"^(00)"]  [email/text]
	xtipo:          either tipo/text            = none              [to-string #"^(00)"]  [tipo/text]
	xrua:           either rua/text             = none              [to-string #"^(00)"]  [rua/text]
	xnumero:        either numero/text          = none              [to-string #"^(00)"]  [numero/text]
    xcomplemento:   either complemento/text     = none              [to-string #"^(00)"]  [complemento/text]
	xbairro:        either bairro/text          = none              [to-string #"^(00)"]  [bairro/text]
    xcidade:        either cidade/text          = none              [to-string #"^(00)"]  [cidade/text]
	xuf:            either uf/text              = none              [to-string #"^(00)"]  [uf/text]
	xcep1:          either cep1/text			= none              [to-string #"^(00)"]  [cep1/text]
	xcep2:			either cep2/text			= none              [to-string #"^(00)"]  [cep2/text]
	xobs1:			either obs1/text			= none              [to-string #"^(00)"]  [obs1/text]
	xobs2:			either obs2/text			= none              [to-string #"^(00)"]  [obs2/text]
	xobs3:			either obs3/text			= none              [to-string #"^(00)"]  [obs3/text]
	xobs4:			either obs4/text			= none              [to-string #"^(00)"]  [obs4/text]
	xobs5:			either obs5/text			= none              [to-string #"^(00)"]  [obs5/text]

	registro: reduce
		[
		   numRegistro/text
		   chavePrimaria/text
		   xapelido
		   nome/text
		   sexo
		   xdiaNasc
		   xmesNasc
		   xanoNasc
		   xnaturalidade
		   xufn
		   xddd
		   xtelefone1
		   xtelefone2
		   xemail
		   xtipo
		   xrua
		   xnumero
		   xcomplemento
		   xbairro
		   xcidade
		   xuf
		   xcep1
		   xcep2
		   xobs1
		   xobs2
 		   xobs3
		   xobs4
		   xobs5
		]


	indice:
		rejoin
		[
			numRegistro/text " " chavePrimaria/text " " nome/text
		]

	save to-file nomeArquivo registro
	;write to-file nomeArquivo replace/all read to-file nomeArquivo "none" ""

	if	eNovo = true [save %cfg\ordem.cfg reduce[numRegistro/text]]
	if	eNovo = true [write/append/lines %cfg\indice.cfg indice]

	eNovo = false

	do desabilitar
]


gravar1:
[
	nomeArquivo: rejoin ["reg\"nome/text".ficha"]

	sexo:   case
			[
				masculino/data = true "M"
				feminino/data  = true "F"
			]

	registro: reduce
		[
		   numRegistro/text
		   chavePrimaria/text
		   apelido/text
		   nome/text
		   sexo
		   diaNasc/text
		   mesNasc/text
		   anoNasc/text
		   naturalidade/text
		   ufn/text
		   ddd/text
		   telefone1/text
		   telefone2/text
		   email/text
		   tipo/text
		   rua/text
		   numero/text
		   complemento/text
		   bairro/text
		   cidade/text
		   uf/text
		   cep1/text
		   cep2/text
		   obs1/text
		   obs2/text
 		   obs3/text
		   obs4/text
		   obs5/text
		]


	indice:
		rejoin
		[
			numRegistro/text " " chavePrimaria/text " " nome/text
		]

	save to-file nomeArquivo registro
	;write to-file nomeArquivo replace/all read to-file nomeArquivo "none" ""

	if	eNovo = true [save %cfg\ordem.cfg reduce[numRegistro/text]]
	if	eNovo = true [write/append/lines %cfg\indice.cfg indice]

	eNovo = false

	do desabilitar
]

gravar2:
[
	nomeArquivo: rejoin ["reg\"nome/text".ficha"]

	sexo:   case
			[
				masculino/data = true "M"
				feminino/data  = true "F"
			]
			
	write  to-file nomeArquivo

		[
		   numRegistro/text ";"
		   chavePrimaria/text ";"
		   apelido/text ";"
		   nome/text ";"
		   sexo ";"
		   diaNasc/text ";"
		   mesNasc/text ";"
		   anoNasc/text ";"
		   naturalidade/text ";"
		   ufn/text ";"
		   ddd/text ";"
		   telefone1/text ";"
		   telefone2/text ";"
		   email/text ";"
		   tipo/text ";"
		   rua/text ";"
		   numero/text ";"
		   complemento/text ";"
		   bairro/text ";"
		   cidade/text
		   uf/text
		   cep1/text
		   cep2/text
		   obs1/text
		   obs2/text
		   obs3/text
		   obs4/text
		   obs5/text
		]

		
	indice:			
		rejoin
		[
			numRegistro/text " " chavePrimaria/text " " nome/text
		]

	if	eNovo = true [save %cfg\ordem.cfg reduce[numRegistro/text]]
	if	eNovo = true [write/append/lines %cfg\indice.cfg indice]

	eNovo = false

	do desabilitar
]

excluir:
[
	arqExcluir:
		rejoin[
		".\reg\" nome/text ".ficha"
		] 
	delete to-file arqExcluir

	do limpar
	do desabilitar
]
	
editar:
[
	do habilitar
]	

limpar:
[
   clear numRegistro/text
   clear chavePrimaria/text
   clear apelido/text
   clear nome/text
   masculino/data: false
   feminino/data: false
   clear diaNasc/text
   clear mesNasc/text
   clear anoNasc/text
   clear naturalidade/text
   clear ufn/text
   clear ddd/text
   clear telefone1/text
   clear telefone2/text
   clear email/text
   clear tipo/text
   clear rua/text
   clear numero/text
   clear complemento/text
   clear bairro/text
   clear cidade/text
   clear uf/text
   clear cep1/text
   clear cep2/text
   clear obs1/text
   clear obs2/text
   clear obs3/text
   clear obs4/text
   clear obs5/text

   anos/text: ""
   idade/text: ""
]


	

habilitar:
[ 	 		   
	apelido/enabled?: true			   
	;nome/enabled?: true 
	masculino/enabled?: true
	feminino/enabled?: true
	diaNasc/enabled?: true
	mesNasc/enabled?: true
	anoNasc/enabled?: true
	naturalidade/enabled?: true
	ufn/enabled?: true
	ddd/enabled?: true
	telefone1/enabled?: true
	telefone2/enabled?: true
	email/enabled?: true
	tipo/enabled?: true
	rua/enabled?: true
	numero/enabled?: true
	complemento/enabled?: true
	bairro/enabled?: true
	cidade/enabled?: true
	uf/enabled?: true
	cep1/enabled?: true
	cep2/enabled?: true
	obs1/enabled?: true
	obs2/enabled?: true
	obs3/enabled?: true
	obs4/enabled?: true
	obs5/enabled?: true
]

desabilitar:
[
	apelido/enabled?: false			   
	nome/enabled?: false 
	masculino/enabled?: false
	feminino/enabled?: false
	diaNasc/enabled?: false
	mesNasc/enabled?: false
	anoNasc/enabled?: false
	naturalidade/enabled?: false
	ufn/enabled?: false
	ddd/enabled?: false
	telefone1/enabled?: false
	telefone2/enabled?: false
	email/enabled?: false
	tipo/enabled?: false
	rua/enabled?: false
	numero/enabled?: false
	complemento/enabled?: false
	bairro/enabled?: false
	cidade/enabled?: false
	uf/enabled?: false
	cep1/enabled?: false
	cep2/enabled?: false
	obs1/enabled?: false
	obs2/enabled?: false
	obs3/enabled?: false
	obs4/enabled?: false
	obs5/enabled?: false
]
