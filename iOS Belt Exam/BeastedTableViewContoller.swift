//
//  BeastedTableViewContollerTableViewController.swift
//  iOS Belt Exam
//
//  Created by Ian Yang on 3/23/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit
import CoreData

class BeastedTableViewContoller: UITableViewController {
    
    var items = [BucketListItem]()
    
    let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    let manageObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAllItems()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeastedCustomCell", for: indexPath)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        let item = items[indexPath.row]
        cell.textLabel?.text = item.text!
        cell.detailTextLabel?.text = dateFormatter.string(from: item.date!)
        return cell
        
    }
    
    func fetchAllItems() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "BucketListItem")

        let mypredicate = NSPredicate(format: "beasted == %@", true as CVarArg)
        request.predicate = mypredicate
        
        do{
            let result = try manageObjectContext.fetch(request)
            items = result as! [BucketListItem]
        } catch {
            print("\(error)")
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        fetchAllItems()
        tableView.reloadData()
    }
}

