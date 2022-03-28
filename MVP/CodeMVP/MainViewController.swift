//
//  MainViewController.swift
//  MVP
//
//  Created by Leonid Shchipkov on 24.03.2022.
//

import UIKit

class MainViewController: UIViewController, MainViewDelegate, PresenterInput{
    
    var mainView = MainView()
    var output: PresenterOutput!
    
    override func loadView() {
        view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.delegate = self
        
        
    }
    
    func showNumbers(_ numbers: [Int]) {
        let numbersString = numbers.map({"\($0)"}).joined(separator: ",")
        mainView.textLabel.text = numbersString
    }
    
    func actionDidPressed() {
        output.didPressedAction()
    }
}
