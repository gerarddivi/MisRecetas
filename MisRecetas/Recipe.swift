//
//  Recipe.swift
//  MisRecetas
//
//  Created by Gerard Divi on 22/9/16.
//  Copyright © 2016 Gerard Divi. All rights reserved.
//

import Foundation
import UIKit

class Recipe: NSObject {
    var name: String!
    var image: UIImage!
    var time: Int!
    var ingredients: [String]!
    var steps: [String]!
    var rating: String = "rating"
//    var isFavourite: Bool = false
    
    init(name: String, image: UIImage, time: Int, ingredients: [String], steps: [String]) {
        self.name = name
        self.image = image
        self.time = time
        self.ingredients = ingredients
        self.steps = steps
    }
}
