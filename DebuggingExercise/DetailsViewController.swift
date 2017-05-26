//
//  DetailsViewController.swift
//  DebuggingExercise
//
//  Created by Hesham Abd-Elmegid on 7/19/16.
//  Copyright © 2016 CareerFoundry. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var takeMeBackButton: UIButton!
    @IBOutlet weak var selectedItemLabel: UILabel!

    var item: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedItemLabel.text = "You selected \(item!)"
        takeMeBackButton.addTarget(self, action: "tappedButton:", for: .touchUpInside)

    }
    
    func buttonTapped(_ sender: AnyObject) {
        navigationController?.popViewController(animated: true)
    }
}
