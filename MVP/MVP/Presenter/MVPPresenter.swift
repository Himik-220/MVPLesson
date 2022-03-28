//
//  MVPPresenter.swift
//  MVP
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import Foundation

class MVPPresenter: MVPViewOutput {
    
    weak var view: MVPViewInput!
    var dataManager: DataManager!
    
    func didPressedAction() {
        let numbers = dataManager.obtainNumbers()
        view.showNumbers(numbers)
    }
}
