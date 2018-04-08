//
//  AddItemViewController.swift
//  iOS Belt Exam
//
//  Created by Ian Yang on 3/23/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit
import CoreData

class AddItemViewController: UIViewController {
    
    weak var delegate: AddItemViewControllerDelegate?

    
    var item: String?
    var indexPath: IndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    
    @IBAction func doneButtonPressed(by: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: itemTextField.text!, at: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
