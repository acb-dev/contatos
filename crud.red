Red [ ]

gravar: does
[

		;preNomeArquivo: nome/text
		;nomeArquivo rejoin ["%reg\"preNomeArquivo".reg"]

		sexo:   case [
					masculino/data = true "M"
					feminino/data  = true "F"
				]
				
		registro: 
		
			 rejoin [
			   chavePrimaria/text
			   ";"
			   codigo/text
			   ";"
			   apelido/text
			   ";"
			   nome/text
			   ";"
			   sexo
			   ";"
			   dd/text
			   ";"
			   mm/text
			   ";"
			   aaaa/text
			   ";"
			   ddd/text
			   ";"
			   telefone1/text
			   ";"
			   telefone2/text
			   ";"
			   email/text
			   ";"
			   tipo/text
			   ";"
			   rua/text
			   ";"
			   numero/text
			   ";"
			   complemento/text
			   ";"
			   bairro/text
			   ";"
			   cidade/text
			   ";"
			   uf/text
			   ";"
			   cep1/text
			   ";"
			   cep2/text
			   ";"
			   obs1/text
			   ";"
			   obs2/text
			   ";"
			   obs3/text
			   ";"
			   obs4/text
			   ";"
			   obs5/text
			]

		prin nomeArquivo

		save %reg\nome\text.reg registro
]

novo: does
	[
		novoRegistro: true
		codigo/enabled?: true
	]
