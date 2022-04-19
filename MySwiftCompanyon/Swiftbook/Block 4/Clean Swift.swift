//
//  Clean Swift.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 16.04.2022.
//

// В отличии от VIPER  здесь  view-interactor-presenter связаны циклично через request-response-viewModel  (VIP цикл)
// Схема создается для каждого модуля
//
// ViewModels - cоздаются модели структур(GreetingModels) для передачи между элементами:
//
// enum Greeting {
//
//    // MARK: Use cases
//    enum ShowGreeting {
//        struct Request {
//        }
//        struct Response {
//            let name: String
//            let surename: String
//        }
//        struct ViewModel {
//            let greeting: String
//        }
//    }
//  }
// typealias GreetingViewModel = Greeting.ShowGreeting.ViewModel
// typealias GreetingRequest = Greeting.ShowGreeting.Request
// typealias GreetingResponse = Greeting.ShowGreeting.Response
//
// View  - подписана под протокол для получения данных от презентера
//          -  имееет ссылку на interactor - создает экземпляр запроса и передает интерактору
//          let request = GreetingRequest()  - формируется в зависимости от потребностей
//          interactor?.showGreeting(request: request)
//
// Interactor - подписан под протокол для получения запроса от View
//                   - подписан под протокол …DataStore - источник данных(запрсосы,хранилище)
//                   - имееет ссылку на presenter - создает экземпляр response и передает  в презентер
//                   let response = GreetingResponse(name: name, surename: surname)
//                   presenter?.presentGreeting(response: response)
//
// Presenter - подписан под протокол для получения запроса от интрерактора
//                  - имеет слабую ссылку на View - создает экземпляр viewModel и предает во вью, которая берет из нее данные для отображения
//                  let viewModel = GreetingViewModel(greeting: greeting)
//                  viewController?.displayGreeting(viewModel: viewModel)
//
// Configurator - final синглтон, занимается сборкой проекта
//                        - во View во viewDidload вызывает функцию по сборке - предается экземпляр вью с типом самого вьюконтроллера( не протокола)
//                            configur(with viewController: GreetingViewController)    - в данном случае в параметр передаем  self
//
//  Router - для переходов между модулями
//
//  Так же могут быть workers  для интерактора и презентера  для разгрузки
