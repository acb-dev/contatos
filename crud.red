Red [ ]

novo: does
	[		
		titulo/text: "Cadastre o novo contato"
		numRegistro/text: to-string do numerar		
		chavePrimaria/text: do chavear		
		do habilitar
		do limpar
	]
	
abrir: does
	[
		quit
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
		   dd/text
		   mm/text
		   aaaa/text
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
	
	save %cfg\ordem.cfg reduce[numRegistro/text]
	write/append/lines %cfg\indice.cfg indice
	save to-file nomeArquivo registro
	
	do desabilitar
]


	
editar: does [
	do habilitar
]	
		
limpar: does
[	
   clear apelido/text
   clear nome/text
   masculino/data: false
   feminino/data: false
   clear dd/text
   clear mm/text
   clear aaaa/text
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
	nome/enabled?: true 
	masculino/enabled?: true
	feminino/enabled?: true
	dd/enabled?: true
	mm/enabled?: true
	aaaa/enabled?: true
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
	dd/enabled?: false
	mm/enabled?: false
	aaaa/enabled?: false
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