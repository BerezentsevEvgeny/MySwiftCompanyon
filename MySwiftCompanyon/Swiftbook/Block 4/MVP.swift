//
//  MVP.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 26.07.2021.
//

import UIKit

// Presenter

protocol PresenterDelegate: AnyObject {
    func changetext(with text: String)
}

typealias MyPresenterDelegate = PresenterDelegate & UIViewController

class Presenter {
    
    weak var delegate: MyPresenterDelegate?
    
    public func setViewDelegate(delegate: MyPresenterDelegate){
        self.delegate = delegate
    }
    
    func getText() {                   // working func to get text
        let text = "Hello"
        delegate?.changetext(with: text)
    }
}


// ViewController

class ViewController: UIViewController, PresenterDelegate {

    private let presenter = Presenter()  // Create delegate instance

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewDelegate(delegate: self) // set Delegate
    }
    
    //call getText() on Tap or in viewDidLoad
    
    

    func changetext(with text: String) { // conform delegate
        // some code with text
    }
    

    

    



}

