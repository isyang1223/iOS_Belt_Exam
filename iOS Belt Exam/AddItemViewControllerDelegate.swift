//
//  AddItemViewControllerDelegate.swift
//  iOS Belt Exam
//
//  Created by Ian Yang on 3/23/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import Foundation

protocol AddItemViewControllerDelegate: class {
    func itemSaved (by controller: AddItemViewController, with text: String, at indexPath: IndexPath?)
    func cancelButtonPressed(by controller: AddItemViewController)
    
}

