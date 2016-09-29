//
//  FullRecipeCell.swift
//  MisRecetas
//
//  Created by Gerard Divi on 26/9/16.
//  Copyright © 2016 Gerard Divi. All rights reserved.
//

import UIKit

class FullRecipeCell: UITableViewCell {

    @IBOutlet var fullRecipeImage: UIImageView!
    
    @IBOutlet var fullRecipeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
