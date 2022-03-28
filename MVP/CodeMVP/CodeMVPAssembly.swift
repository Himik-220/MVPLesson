//
//  CodeMVPAssembly.swift
//  MVP
//
//  Created by Leonid Shchipkov on 24.03.2022.
//

import Foundation
import UIKit

class MainModuleAssembly {
    class func configuredModule() -> UIViewController {
        let view = MainViewController()
        let presenter = MainViewPresenter()
        let dataManager = DataManagerImplementation()
        view.output = presenter
        presenter.view = view
        presenter.dataManager = dataManager
        return view
    }
}
