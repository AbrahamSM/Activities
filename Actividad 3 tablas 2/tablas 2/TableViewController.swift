//
//  TableViewController.swift
//  tablas 2
//
//  Created by macbookUser on 14/03/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var productos = ["bagels --- $20", "brownies --- $18", "butter --- $15", "cheese --- $22", "coffee --- $32", "cookies --- $10", "donuts --- $10", "granola --- $30", "juice --- $15", "lemonade --- $15", "lettuce --- $9", "milk --- $18", "oatmeal --- $40", "onions --- $8", "potato --- $12", "tea --- $12", "tomato --- $9", "yogurt --- $35"]
    
    var precios: [Int] = [15, 18, 15, 22, 32, 10, 10, 30, 15, 15, 9, 18, 40, 8, 12, 12, 9, 35]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // #warning Incomplete implementation, return the number of rows
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = productos[indexPath.row]
        cell.imageView?.image = UIImage(named: productos[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        let yesClosure = { ( action: UIAlertAction) -> Void in
            cell?.accessoryType = .checkmark
        }
        
        let noClosure = { ( action: UIAlertAction) -> Void in
            cell?.accessoryType = .none
        }
        
        let optionMenu = UIAlertController(title: "¿Comprar?", message: "Rico Postre", preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Si", style: .default, handler: yesClosure)
        
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: noClosure)
        
        optionMenu.addAction(yesAction)
        optionMenu.addAction(noAction)
        
        present(optionMenu, animated: true, completion: nil)
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            productos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let shareAction = UIContextualAction(style: .normal, title: "Compartir") { (action, sourceView, completionHandler) in
            let texto = "Compartiendo en..."
            let activityController = UIActivityViewController(activityItems: [texto], applicationActivities: nil)
            
            self.present(activityController, animated: true, completion: nil)
            
            completionHandler(true)
        }
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [shareAction])
        
        return swipeConfiguration
        
    }
 

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "guia"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let productoView = segue.destination as! ProductoViewController
                productoView.nombre = productos[indexPath.row]
            }
        }
    }
    

}
