//
//  MVVM.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 10.04.2022.
//

// protocol GreetingViewModelProtocol {
//    var greeting: String? { get }
//    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)? { get set }
//    init(person: Person)
//    func showGreeting()
// }
//
// class GreetingViewModel: GreetingViewModelProtocol {
//
//    var greeting: String? {           <- изменяющееся свойство
//        didSet {
//            greetingDidChange?(self)         <- при изменении  greeting в коллбэк помещается весь класс
//        }
//    }
//
//    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)?       <- коллбэк
//
//   private let person: Person
//
//     required init(person: Person) {
//         self.person = person
//  }
//
//    func showGreeting() {
//        greeting = "Hello" + " " + person.name + " " + person.surname
//    }
// }
//
// class GreetingViewController: UIViewController {
//
//    var greetingLabel = UILabel()
//
//    private var viewModel: GreetingViewModelProtocol! {
//        didSet {
//              viewModel.greetingDidChange = { [unowned self] viewModel in
//                self.greetingLabel.text = viewModel.greeting               <- при изменении viewModel происходят изменении
//            }
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//       let person = Person(name: “Tim”, surname: “Cook”)
//        viewModel = GreetingViewModel(person: Person)
//    }
//
//    @objc func buttonTapped() {
//        viewModel.showGreeting()     <- нажатие не кнопку запускает весь цикл
//    }
// }
