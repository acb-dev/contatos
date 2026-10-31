Red [ ]

novo: does
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
	
consultar: does
[
	do limpar
	do desabilitar

	ficha: load request-file/title/file/filter "Escolha o contato" %"./reg/" [ "Contatos" "*.ficha"]

	eNovo: false
		
	case
	[
		ficha/5 = "M" masculino/data: true
		ficha/5 = "F" feminino/data:  true
	]

	numRegistro/text: ficha/1
	chavePrimaria/text: ficha/2
	either apelido/text = none [apelido/text: ""] [apelido/text ficha/3]
	nome/text: ficha/4
	either diaNasc/text = none [diaNasc/text: "00"] [diaNasc/text: ficha/6]
	either mesNasc/text = none [mesNasc/text: "00"] [mesNasc/text: ficha/7]
	either anoNasc/text = none [anoNasc/text: "0000"] [anoNasc/text: ficha/8]
	either naturalidade/text = none [naturalidade/text: ""] [naturalidade/text: ficha/9]
	either ufn/text = none [ufn/text: ""] [ufn/text: ficha/10]
	either ddd/text = none [ddd/text: ""] [ddd/text: ficha/11]
	either telefone1/text = none [telefone1/text: ""] [telefone1/text: ficha/12]
	either telefone2/text = none [telefone2/text: ""] [telefone2/text: ficha/13]
	either email/text = none [email/text: ""] [email/text: ficha/14]
	either tipo/text = none [tipo/text: ""] [tipo/text: ficha/15]
	either rua/text = none [rua/text: ""] [rua/text: ficha/16]
	either numero/text = none [numero/text: ""] [numero/text: ficha/17]
	either complemento/text = none [complemento/text: ""] [complemento/text: ficha/18]
	either bairro/text = none [bairro/text: ""] [bairro/text: ficha/19]
	either cidade/text = none [cidade/text: ""] [cidade/text: ficha/20]
	either uf/text = none [uf/text: ""] [uf/text: ficha/21]
	either cep1/text = none [cep1/text: ""] [cep1/text: ficha/22]
	either cep2/text = none [cep2/text: ""] [cep2/text: ficha/23]
	either obs1/text = none [obs1/text: ""] [obs1/text: ficha/24]
	either obs2/text = none [obs2/text: ""] [obs2/text: ficha/25]
	either obs3/text = none [obs3/text: ""] [obs3/text: ficha/26]
	either obs4/text = none [obs4/text: ""] [obs4/text: ficha/27]
	either obs5/text = none [obs5/text: ""] [obs5/text: ficha/28]


	idade/text: to-string etarizar to-integer diaNasc/text to-integer mesNasc/text to-integer anoNasc/text
	anos/text: " anos"


	show formulario	
]
	
gravar: does
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
		   true
		]

		
	indice:			
		rejoin
		[
			numRegistro/text " " chavePrimaria/text " " nome/text
		]

	save to-file nomeArquivo registro
	if	eNovo = true [save %cfg\ordem.cfg reduce[numRegistro/text]]
	if	eNovo = true [write/append/lines %cfg\indice.cfg indice]

	eNovo = false

	do desabilitar
]

excluir: does [
	arqExcluir:
		rejoin[
		".\reg\" nome/text ".ficha"
		] 
	delete to-file arqExcluir

	do limpar
	do desabilitar
]
	
editar: does [
	do habilitar
]	

limpar: does
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
 ]


	

habilitar: does
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

desabilitar: does
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
