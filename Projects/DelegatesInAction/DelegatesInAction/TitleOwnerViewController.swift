//
//  TitleOwnerViewController.swift
//  DelegatesInAction
//
//  Created by Ana Nogal on 12/04/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

import UIKit

class TitleOwnerViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    weak var delegate: TitleDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func textFieldChanged(_ sender: Any) {
        if let newTitle = textField.text {
            self.title = newTitle
            delegate?.didChangeTitle(title: newTitle)
        }
    }
}
