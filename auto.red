Red []

numerar: [
	aux1: load %cfg\ordem.cfg
	aux2: to-integer aux1
	ordem: aux2 + 1
]

chavear: [
    chave: to-string now/precise
    replace/all chave "-" ""
    replace/all chave "/" ""
    replace/all chave ":" ""
    replace/all chave "." ""
    replace chave "Jan" "01"
    replace chave "Feb" "02"
    replace chave "Mar" "03"
    replace chave "Apr" "04"
    replace chave "May" "05"
    replace chave "Jun" "06"
    replace chave "Jul" "07"
    replace chave "Aug" "08"
    replace chave "Sep" "09"
    replace chave "Oct" "10"
    replace chave "Nov" "11"
    replace chave "Dec" "12"
	take/part chave 19
]

etarizar:
[

dd:   either diaNasc/text <> "" [to-integer diaNasc/text] [0]
mm:   either mesNasc/text <> "" [to-integer mesNasc/text] [0]
aaaa: either anoNasc/text <> "" [to-integer anoNasc/text] [0]

temDataZerada: any [dd = 0 mm = 0 aaaa = 0]

if temDataZerada = true [exit]

;if all [true diaNasc/text <> "" mesNasc/text <> "" anoNasc/text <> "" true] [exit]

;dd:   to-integer diaNasc/text
;mm:   to-integer mesNasc/text
;aaaa: to-integer anoNasc/text

diaAtual: now/day
mesAtual: now/month
anoAtual: now/year

anosDeVida: anoAtual - aaaa

either mesAtual < mm
[anosDeVida: anosDeVida - 1]
[either mesAtual = mm
    [if diaAtual < dd [anosDeVida: anosDeVida - 1]]
    [anosDeVida: anosDeVida]
]

idade/text: to-string anosDeVida
anos/text: " anos"

]

etarizar2: func [
                diaNasc
                mesNasc 
                anoNasc
               ] 
               [

                diaAtual: now/day
				mesAtual: now/month
				anoAtual: now/year
				
				anosDeVida: anoAtual - anoNasc
                
				 

				either mesAtual < mesNasc
					[anosDeVida: anosDeVida - 1]
					[either mesAtual = mesNasc
						[if diaAtual < diaNasc [anosDeVida: anosDeVida - 1]]
						[anosDeVida: anosDeVida]			
					]
				return: anosDeVida				
				]				 
				
				
				
                
                
