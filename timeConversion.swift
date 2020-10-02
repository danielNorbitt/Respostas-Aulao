import Foundation

func timeConverison(time_12h:String){

    var time_24h = time_12h

    if time_12h.contains("AM"){
        if String(time_24h.prefix(2)) == "12"{
            time_24h = "00" + String(time_24h.suffix(time_12h.count - 2))
        }
    }else{
        if String(time_24h.prefix(2)) != "12"{
            let numeroConvertido = Int(time_24h.prefix(2))! + 12
            time_24h = String(numeroConvertido) + String(time_24h.suffix(time_12h.count - 2))
        }
    }

    time_24h = String(time_24h.prefix(time_12h.count - 2))

    print(time_24h)
}

timeConverison(time_12h:"07:05:45PM")