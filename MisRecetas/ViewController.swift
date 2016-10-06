//
//  ViewController.swift
//  MisRecetas
//
//  Created by Gerard Divi on 22/9/16.
//  Copyright © 2016 Gerard Divi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var recipes: [Recipe] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        var recipe = Recipe(name: "Tortilla de patatas",
                            image:#imageLiteral(resourceName: "tortilla") ,
                            time: 20,
                            ingredients: ["Patatas", "Huevos", "Cebolla"],
                            steps: ["Pelar las patatas y la cebolla",
                                    "Cortar las patatas y la cebolla y sofreir",
                                    "Batir los huevos y echarlos durante 1 minuto a la sartén con el resto"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Arroz meloso de montaña",
                        image: #imageLiteral(resourceName: "meloso"),
                        time: 60,
                        ingredients: ["Aceite virgen extra","Arroz bomba", "Tomate maduro", "Cebolla", "Ajo", "Pimiento rojo", "Pimiento Verde","Puerro","Setas variadas deshidratadas","Espárragos","Espianacas","Zanahoria","Butifarra blanca"],
                        steps: ["Ponemos en remojo las setas deshidratadas, el caldo lo usaremos para cocer el arroz junto con caldo de ave, o verduras o el            que queráis",
                                "Hacemos el sofrito con el tomate, cebolla, ajo y pimientos, mi secreto es triturarlo antes, dejar evaporar el agua y sofreir hasta que quede confitado, una vez evaporada el agua le añado un vasito de vino blanco",
                                "Mientras hacemos el sofrito vamos cortando el fondo al gusto, eso sí el puerro lo más pequeñito que se pueda",
                                "Marcamos el arroz con el sofrito y el fondo, añadimos el caldo hirviendo",
                                "Una vez haya arrancado a hervir, fuego medio alto durante 5 minutos, bajamos el fuego a medio vigilando que no se pegue mucho el arroz durante unos 8 o 9 minutos más, el secreto de un buen socarrat es que no sepa todo el arroz a quemado 😉",
                                "Para que quede meloso hay que ir removiendo de vez en cuando el arroz para que suelte el almidón y quede la textura deseada, la cantidad de caldo depende de muchas cosas, así que hay que vigilar que no se quede sin caldo, ni muy caldoso, normalmente suele ser para meloso, entre 2 y 3 partes de caldo por una de arroz",
                                "Una vez pasados los 13, 14 minutos de cocción, dejar reposar otros 3 minutos",
                                "Ya sólo queda servir y disfrutar, bon appétit!!! 😎"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Estofado de Canguro con salsa Romesco",
                        image: #imageLiteral(resourceName: "estofado"),
                        time: 10,
                        ingredients: ["Pan de hamburguesa", "Lechuga", "Tomate", "Queso", "Carne de hamburguesa"],
                        steps: ["Poner al fuego la carne al gusto",
                                "Montar la hamburguesa con sus ingredientes entre los panes"])

        recipes.append(recipe)
        
        recipe = Recipe(name: "Ensalada de Papaya",
                        image: #imageLiteral(resourceName: "papaya"),
                        time: 15,
                        ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimiento", "Salsa César", "Pollo"],
                        steps: ["Limpiar todas las verduras y trocearlas",
                                "Cocer el pollo al gusto",
                                "Juntar todos los ingredientes en una ensaladera y servir con salsa César por encima"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Caldoso Mar y Montaña",
                        image: #imageLiteral(resourceName: "caldoso"),
                        time: 15,
                        ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimiento", "Salsa César", "Pollo"],
                        steps: ["Limpiar todas las verduras y trocearlas",
                                "Cocer el pollo al gusto",
                                "Juntar todos los ingredientes en una ensaladera y servir con salsa César por encima"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Brusquetta",
                        image: #imageLiteral(resourceName: "brusquetta"),
                        time: 15,
                        ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimiento", "Salsa César", "Pollo"],
                        steps: ["Limpiar todas las verduras y trocearlas",
                                "Cocer el pollo al gusto",
                                "Juntar todos los ingredientes en una ensaladera y servir con salsa César por encima"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Empanada gallega",
                        image: #imageLiteral(resourceName: "empanada"),
                        time: 15,
                        ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimiento", "Salsa César", "Pollo"],
                        steps: ["Limpiar todas las verduras y trocearlas",
                                "Cocer el pollo al gusto",
                                "Juntar todos los ingredientes en una ensaladera y servir con salsa César por encima"])
        recipes.append(recipe)
        
        
        recipe = Recipe(name: "Ensalada de Frutos Rojos con Foie",
                        image: #imageLiteral(resourceName: "frutos rojos"),
                        time: 15,
                        ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimiento", "Salsa César", "Pollo"],
                        steps: ["Limpiar todas las verduras y trocearlas",
                                "Cocer el pollo al gusto",
                                "Juntar todos los ingredientes en una ensaladera y servir con salsa César por encima"])
        recipes.append(recipe)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true

    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let recipe = recipes[indexPath.row]
        let cellID = "RecipeCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! RecipeCellTableViewCell
        cell.nameLabel.text = recipe.name
        cell.thumbnailImageView.image = recipe.image
        cell.timeLabel.text = "\(recipe.time!) min"
        cell.ingredientsLabel.text = "Ingredientes: \(recipe.ingredients.count)"
        
//        if recipe.isFavourite {
//            cell.favouriteImage.isHidden = false
//        } else {
//            cell.favouriteImage.isHidden = true
//        }
    
//        cell.thumbnailImageView.layer.cornerRadius = 90
//        cell.thumbnailImageView.clipsToBounds = true
//        cell.thumbnailImageView.layer.borderWidth = 4
        cell.thumbnailImageView.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            self.recipes.remove(at: indexPath.row)
        }
        
        self.tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        //Compartir
        let shareAction = UITableViewRowAction(style: .default, title: "Compartir") { (action, indexPath) in
            
            var shareDefaultText = "Estoy mirando en la App del curso de iOS 10 con Juan Gabriel la receta de \(self.recipes[indexPath.row].name!).\nSe tarda \(self.recipes[indexPath.row].time!) minutos. \nTiene estos ingredientes: \n"
            
            for ingrediente in self.recipes[indexPath.row].ingredients {
                shareDefaultText += "-\(ingrediente)\n"
            }
            
            shareDefaultText += "Los pasos a seguir son : \n"
            
            for paso in self.recipes[indexPath.row].steps {
                shareDefaultText += "-\(paso). \n"
            }
            
            let activityController = UIActivityViewController(activityItems: [shareDefaultText, self.recipes[indexPath.row].image!], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
        }
        shareAction.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        //Borrar
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Borrar") { (action, indexPath) in
            self.recipes.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)

        }
        
        deleteAction.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        return[shareAction, deleteAction]

    }


    //MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("He seleccionado la fila \(indexPath.row)")
        
//        let recipe = self.recipes[indexPath.row]
//        
//        let alertController = UIAlertController(title: recipe.name, message: "Valora este plato", preferredStyle: .alert)
//        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
//        alertController.addAction(cancelAction)
//        
//        var favouriteActionTitle = "Favorito"
//        var favouriteActionStyle = UIAlertActionStyle.default
//        if recipe.isFavourite {
//            favouriteActionTitle = "No favorita"
//            favouriteActionStyle = UIAlertActionStyle.destructive
//        }
//        
//        let favouriteAction = UIAlertAction(title: favouriteActionTitle, style: favouriteActionStyle) { (action) in
//            let recipe = self.recipes[indexPath.row]
//            recipe.isFavourite = !recipe.isFavourite
////            self.tableView.reloadData()
//            self.tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.fade)
//        }
//        alertController.addAction(favouriteAction)
//        
//        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedRecipe = self.recipes[indexPath.row]
                let destinationViewController = segue.destination as! DetailViewController
                destinationViewController.recipe = selectedRecipe
            }
            
        }
        
    }

}



