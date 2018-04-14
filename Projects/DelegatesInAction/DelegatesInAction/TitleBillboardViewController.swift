//
//  TitleBillboardViewController.swift
//  DelegatesInAction
//
//  Created by Ana Nogal on 12/04/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

import UIKit

class TitleBillboardViewController: UIViewController, TitleDelegate {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationController = segue.destination as? TitleOwnerViewController
        destinationController?.delegate = self
    }

    @IBAction func dismiss(segue: UIStoryboardSegue) {
        
    }

    func didChangeTitle(title: String){
        titleLabel.text = "The new title is \"\(title)\""
    }

}
