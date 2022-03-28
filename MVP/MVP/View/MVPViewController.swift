//
//  MVPViewController.swift
//  MVP
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import UIKit

class MVPViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var output: MVPViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: - Actions
    @IBAction func didPressedAction(_ sender: UIButton) {
        output.didPressedAction()
    }
    
}

extension MVPViewController: MVPViewInput{
    //MARK: - Input
    func showNumbers(_ numbers: [Int]) {
        let numbersString = numbers.map({"\($0)"}).joined(separator: ",")
        textLabel.text = numbersString
    }
}
