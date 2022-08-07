import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabelChanged: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet var BeerArray: [UIButton]!
    //массив как один слой - кнопка и лэйблы и так далее
    
    let myView = UIView()
    //сделали глобальной чтобы можно было в функциях по нажатиям кнопок к ней обращаться

    override func viewDidLoad() {
        super.viewDidLoad()
        //logic and VC configuration. Срабатывает один единственный раз
        
        print("ViewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        // VC screen size. Вызывается каждый раз когда наш экран каким-то образом перестроил свой размер
        super.viewDidLayoutSubviews()
        print("ViewDidLayoutSubviews")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //VC is ready to appear. Срабатывает каждый раз, когда контроллер готов показаться на экране
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Vc is on screen
        super.viewDidAppear(animated)
        print("ViewDidAppear")
    }

    @IBAction func Minus(_ sender: UIButton) {
        if Int(FirstBeerLabel.text!) == 0 {
            return
            // если до нажатия на метке был 0, то мы делаем ретурн - прекращаем выполнение кода
            //return в данном случае не позволяет функции идти дальше
        }
        var beer = Manager.shared.getBear(name: "First")
        var = beer.quantity
        if quantity == 0{
            return
        }
        quantity -= 1
        FirstBeerLabel.text = "\(Int(FirstBeerLabel.text!)!-1)"
        
          
        
    }
    
    
    @IBAction func PlusFunc(_ sender: UIButton) {
        var quantity = Manager.shared.getBear(name: "First").quantity
        let selected = Int(FirstBeerLabel.text!)
        
        if quantity == selected{
            return
            //чтобы не было пива больше 100
        }
        quantity += 1
        FirstBeerLabel.text = "\(Int(FirstBeerLabel.text!)!+1)"
    //minus function.
        
    }
    
    @IBAction func SellFunc(_ sender: UIButton) {
        
        for label in CollectionBeer{
            let quantity = Int(label.text!)
            //IBaction - тригер
            
        }
       
    }
    @IBAction func newButtonPressed(_ sender: UIButton) {
        self.createView()
    }
    func createView(){
        //начинаем с создания объекта с которым мы будем работать
        //let myView = UIView()
        //создали вью кодом
        myView.frame = CGRect(x: 100, y: 50, width: 150, height: 150)
        //CG - работающий с графикой
        //Rect - прямоугольник
        myView.backgroundColor = .magenta
        //есть предустановленные цвета
        //свойство получает на вход объект класса UIColor
        //UI.magenta - то же самое
        self.view.addSubview(myView)
        //добавили свежесоздаваемый  myView на экран
        //myView.layer.cornerRadius = 10
        //закругляем наш вью
        myView.layer.cornerRadius = myView.frame.size.width/2
        //сделали круг из вью прямоугольного
        // если мы хотим чтобы при ресайзе тоже был круг то эту строку нужно повторить и в след функции
        
    }
    
    @IBAction func resizeButtonPressed(_ sender: UIButton) {
        //по нажатию кнопки будем изменять размеры нашего вью
        self.myView.frame.size.width += 20
        self.myView.frame.size.height += 20
    }
    
    @IBAction func MoveButtonPressed(_ sender: UIButton) {
        self.myView.frame.origin.x -= 10
        self.myView.frame.origin.y += 10
        //сдвинем вниз и влево наше вью
    }
}

