Red [ ]

novo:
[
	eNovo: true
	temFoto: false
	titulo/text: "Cadastre o novo contato"
	do limpar
	numRegistro/text: to-string do numerar
	chavePrimaria/text: do chavear
	nome/enabled?: true
	do habilitar
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
		   temFoto
		]


	indice:
		rejoin
		[
			numRegistro/text "|" chavePrimaria/text "|" nome/text
		]

	save to-file nomeArquivo registro
	

	if	eNovo = true [save %./cfg/ordem.cfg reduce[numRegistro/text]]
	if	eNovo = true [write/append/lines %./cfg/indice.cfg indice]

	eNovo = false

	do desabilitar
]

excluir:
[
	arqOrigem:
		rejoin[
		"./reg/" nome/text ".ficha"
		] 
	
	arqDestino:
		rejoin[
		"./del/" nome/text ".ficha"
		]
		
	save to-file arqDestino load to-file arqOrigem 
	
	
	delete to-file arqOrigem

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