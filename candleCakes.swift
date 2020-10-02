func candleCake(n:Int,velas:[Int]){

    var maiorNumero:Int = 0

    for vela in velas{
        if vela > maiorNumero{
            maiorNumero = vela
        }
    }

    var velasAltas = 0

    for vela in velas{
        if vela == maiorNumero{
            velasAltas = velasAltas + 1
        }
    }

    print(velasAltas)

}


candleCake(n:4,velas:[3,2,1,3])