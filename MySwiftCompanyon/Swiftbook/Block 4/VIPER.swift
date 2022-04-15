//
//  VIPER.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 13.04.2022.
//

//Протокол ориентированный паттерн, в уроке 5 на 1:28 краткая схема работы
//
//Создаются отдельные модули со всеми компонентами для каждого экрана(или его части)
//Для ячейки в таблице также делается модуль либо вьюмодель например по MPV
//Во вьюконтроллере создаются отдельные методы для взаимодействия с каждым элементом интерфейса
//
//Компоненты каждого модуля
//
//Классы:
//
// ViewController  - в файле прописывают два протокола ViewInputProtocol и ViewOutputProtocol
//                              - работает только с UIKit
//                              - подписан под протокол ViewInputProtocol: AnyObject
//                              - только отображает и уведомляет о взаимодействиях
//                              - strong ссылка на презентер с типом ViewOutputProtocol
//
// Presenter - подписан под два протокола ViewOutputProtocol, InteractorOutputProtocol  (своих протоколов не имеет)
//                    - не знает о UIKit
//                    - хранит состояние модуля - структуру(для каждого модуля может содержать свои поля)
//                    - слабая ссылка на  View  c типом ViewInputProtocol   + инициализатор
//                    - ссылка на Interactor с типом  InteractorInputProtocol !
//                    - если есть переходы то ссылка на router RouterInputProtocol !
//                    - Определяет куда передавать данные от интерактора - обратно во вью или на новый экран при переходе (router.openNextVC(with:)
//
// Interactor - в файле прописывают два протокола InteractorInputProtocol: AnyObject и InteractorOutputProtocol: AnyObject
//                    - подписан под протокол InteractorInputProtocol: AnyObject
//                    - получает команду от презентера, готовит данные(делает запросы в сеть, базу и тд)
//                    - Находит запрашиваемые данные (не занимается извлечением и тд)
//                    - собирает структуру - по сути состояние всех свойств модуля(чтобы не передавать по отдельности) и передает в презентер
//                    - weak/unowned ссылка на презентер  с типом InteractorOutputProtocol
//
// Assembly / Configurator - прописан протокол GreetingConfiguratorProtocol c методом, в параметр view которого  передаем конкретный тип
//вьюконтроллера чтобы из него был доступен presenter
//                                              - его экземпляр класса создаем во вью контроллере
//                                              - во viewDidLoad происходит сборка configurator.configure(with: self)
//                   let view = GreetingViewController(0
//                   let presenter = GreetingPresenter()
//                   let  interactor  = GreetingInteractor()
//                   view.presenter = presenter
//                   presenter.view = view
//                   interactor.presenter = presenter
//                   presener.interactor = interactor
//
// Router - Занимается преходами между модулями
//
//
//Протоколы:
// ViewInputProtocol (подписывается вью)
// ViewOutputProtocol (подписывается презентер)
// InteractorInputProtocol (подписывается сам интерактор)
// InteractorOutputProtocol (подписывается презентер)
// RouterInputProtocol (подписывается роутер)
// ConfiguratorInputProtocol (возможен для роутера)
