//
//  CustomTableViewCell.swift
//  iOS Belt Exam
//
//  Created by Ian Yang on 3/23/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    weak var delegate: CustomTableViewCellDelegate?
    
//    var item: BucketListItem?
    var indexPath: IndexPath?
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        delegate?.buttonPressed(indexPath: indexPath!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

protocol CustomTableViewCellDelegate: class {
    func buttonPressed(indexPath: IndexPath)
}
