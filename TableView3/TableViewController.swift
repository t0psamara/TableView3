//
//  TableViewController.swift
//  TableView3
//
//  Created by Nikita Petrenkov on 25.07.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var tableMeals: [Meal] = meals {
        didSet {
            tableView.reloadData()
        }
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        1.
//        tableView.reloadData()
        
//        2.
//        tableView.beginUpdates()
//        tableView.endUpdates()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.tableMeals += meals
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableMeals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let currentMeal = tableMeals[indexPath.row]
        
        cell.textLabel?.text = currentMeal.title
        cell.detailTextLabel?.text = currentMeal.description

        return cell
    }
    
    /// Обрабатываем тап по ячейке
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let currentMeal = tableMeals[indexPath.row]
        
        print(currentMeal)
        
        // Добавляете логику перехода
//        pushNewController(currentMeal)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            tableMeals.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }

    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let currentMeal = tableMeals.remove(at: fromIndexPath.row)
        tableMeals.insert(currentMeal, at: to.row)
     }
     
    
    
    
    
    
    
    
    
    
    
    
    

    
    


    

}
