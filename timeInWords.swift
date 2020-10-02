func timeInWords(h:Int,m:Int){
    
    let numeroEmString = ["um","dois","tres","quatro","cinco","seis","sete","oito","nove","dez","onze","doze"]
    
    var tempoEmPalavras:String

    if m == 0 {
        tempoEmPalavras = "\(numeroEmString[h-1]) em ponto"
    }else if m >= 1 && m <= 30{
        if m % 15 == 0 {
            tempoEmPalavras = "\(m/15) quarto\(m/15 == 1 ? "":"s") passados das \(numeroEmString[h-1])"
        }else{
            tempoEmPalavras = "\(m) passados das \(numeroEmString[h-1]) "
        }
    }else{
        if m % 15 == 0 {
            tempoEmPalavras = "\(m/15) quartos para \(numeroEmString[h-1])"
        }else{
            tempoEmPalavras = "\(60 - m) para \(numeroEmString[h-1])"
        }
    }
    print(tempoEmPalavras)
}

timeInWords(h:5,m:47)
timeInWords(h:3,m:0)
timeInWords(h:7,m:15)