Red []

etarizar: func [
                dd 
                mm 
                aaaa 
               ] 
               [
                anoAtual: now/year
                mesAtual: now/month
                
                return (anoAtual - aaaa)           
]
idadizar: [2 + 198]
codificar: [to string! now/time ]