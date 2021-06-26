
import Foundation

class ClassDesign {
    
    // 1 IB Outlets
    @IBOutlet label
    @IBOutlet label
    
    @IBOutlet textField
    @IBOutlet textField

    // 2 Public properties
    public var, let
    // 3 Private properties
    private var, let
    
    // 4 Initializers  если не является вью контроллером
    init(some: String) {
        self.some = some
    }
    
    // 4 Override methods Переопределенные методы если является вью контроллером
    override viewWillAppear()
    override viewDidLoad()
    
    // 5 IB Actions
    @IBAction func buttonPressed
    
    // 6 Public Methods методы экземпляра класса
    func fetchData()
    
    // 7 Private methods методы применяемые внутри класса
    private func updateUI()
    
    // Расширения например для подписи на протокол
    extension controller: dataSource
}

let Class = """

Class - это reference(ссылочный тип)
 
 Правила:
 Описывает один обект
 нейминг - сущность
 икапсуляция
 1 метод - 1 задача
 не использовать параметры в методе  для временных данных
 
 let firstPost = Post() экземпляр класса (обект-ссылка на обект в памяти)
 let secondPost = firstPost  это ссылка в памяти на тот же экземпляр с другим названием
 let secondPost() второй экземпляр класса
 оператор сравнения ссылок на класс first === second    -> true or false
 
 init() {}  //  инициализатор это параметры в скобках при создании экземпляра класса -  Class(parameters)


"""

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
