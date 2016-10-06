//
//  RecipeDetailViewCellTableViewCell.swift
//  MisRecetas
//
//  Created by Gerard Divi on 22/9/16.
//  Copyright © 2016 Gerard Divi. All rights reserved.
//

import UIKit

class RecipeDetailViewCellTableViewCell: UITableViewCell {

    @IBOutlet var keyLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
