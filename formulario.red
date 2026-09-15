Red []

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
    
]

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