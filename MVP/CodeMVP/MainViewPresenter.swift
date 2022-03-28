//
//  MainViewPresenter.swift
//  MVP
//
//  Created by Leonid Shchipkov on 24.03.2022.
//

import Foundation

protocol PresenterOutput: AnyObject {
    func didPressedAction()
}
protocol PresenterInput: AnyObject {
    func showNumbers(_ numbers: [Int])
}

class MainViewPresenter: PresenterOutput {
    
    weak var view: PresenterInput!
    var dataManager: DataManager!
    
    func didPressedAction() {
        let numbers = dataManager.obtainNumbers()
        view.showNumbers(numbers)
    }
}
