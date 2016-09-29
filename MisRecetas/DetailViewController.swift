//
//  DetailViewController.swift
//  MisRecetas
//
//  Created by Gerard Divi on 28/9/16.
//  Copyright © 2016 Gerard Divi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var tableViewDetail: UITableView!
    @IBOutlet var recipeImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var ratingButton: UIButton!
    
    var recipe: Recipe!
  
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        nameLabel.text = "\(self.recipe.name!)"
//        timeLabel.text = "\(self.recipe.time!) minutos"
        nameLabel.text = ""
        timeLabel.text = ""
        
        self.title = recipe.name

        self.recipeImageView.image = self.recipe.image
        
        self.tableViewDetail.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) .withAlphaComponent(0.75)
        
        self.tableViewDetail.tableFooterView = UIView(frame: .zero)
        
        self.tableViewDetail.separatorColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) .withAlphaComponent(0.75)
        
        
        self.tableViewDetail.estimatedRowHeight = 30
        self.tableViewDetail.rowHeight = UITableViewAutomaticDimension
        
        self.ratingButton.setImage(UIImage(named: self.recipe.rating), for: .normal)

    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        
        if let reviewVC = segue.source as? ReviewViewController {
            
            if let rating = reviewVC.ratingSelected {
                self.recipe.rating = rating
                self.ratingButton.setImage(UIImage(named: self.recipe.rating), for: .normal)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 2
        case 1:
            return self.recipe.ingredients.count
        case 2:
            return self.recipe.steps.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailRecipecell", for: indexPath) as! RecipeDetailViewCellTableViewCell
        
        cell.backgroundColor = UIColor.clear
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
                case 0:
                    cell.keyLabel.text = "Nombre: "
                    cell.valueLabel.text = self.recipe.name
                case 1:
                    cell.keyLabel.text = "Tiempo: "
                    cell.valueLabel.text = "\(self.recipe.time!) min"
//                case 2:
//                    cell.keyLabel.text = "Favorita: "
//                    if self.recipe.isFavourite {
//                        cell.valueLabel.text = "Sí"
//                    } else {
//                        cell.valueLabel.text = "No"
//                    }
                default:
                    break

                }
        case 1:
            if indexPath.row == 0 {
                cell.keyLabel.text = "Ingredientes:"
            } else {
                cell.keyLabel.text = ""
            }
            cell.valueLabel.text = self.recipe.ingredients[indexPath.row]
        case 2:
            if indexPath.row == 0 {
                cell.keyLabel.text = "Pasos a seguir:"
            } else {
                cell.keyLabel.text = ""
            }
            cell.valueLabel.text = self.recipe.steps[indexPath.row]
        default:
            break
        }

    
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        
        switch section {
        case 0:
            title = ""
        case 1:
            title = "Ingredientes"
        case 2:
            title = "Pasos a seguir"
        default:
            break
        }
        return title
        }
    }

extension DetailViewController: UITableViewDelegate {
    
}


