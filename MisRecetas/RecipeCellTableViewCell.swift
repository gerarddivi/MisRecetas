//
//  RecipeCellTableViewCell.swift
//  MisRecetas
//
//  Created by Gerard Divi on 26/9/16.
//  Copyright © 2016 Gerard Divi. All rights reserved.
//

import UIKit

class RecipeCellTableViewCell: UITableViewCell {

    @IBOutlet var thumbnailImageView: UIImageView!
    @IBOutlet var favouriteImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var ingredientsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
