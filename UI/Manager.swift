import Foundation

class Manager{
    
    static let shared = Manager()
    
    
    private var beerAray = [
        Beer(name: "First", price: 10),
        Beer(name: "Second", price:20),
        Beer(name: "Third", price: 30)]
    // объявили массив пива
        
    private init(){}
    //объявили конструктор сингл тона
    
    func getBear(name: String)-> Beer{
        return beerAray.filter({$0.name == name}).first!
        //возвращаем отфильтрованный массив
    }
    func sellBear(quantity: Int){
    
}
}

