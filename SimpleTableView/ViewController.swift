//
//  ViewController.swift
//  SimpleTableView
//
//  Created by woofgl on 15/12/15.
//  Copyright © 2015年 woofgl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Add some data to display
    var items: [String] = ["Egg Benedict", "Mushroom Risotto", "Full Breakfast", "Hamburger", "Ham and Egg Sandwich", "Creme Brelee", "White Chocolate Donut", "Starbucks Coffee", "Vegetable Curry", "Instant Noodle with Egg", "Noodle with BBQ Pork", "Japanese Noodle with Pork", "Green Tea", "Thai Shrimp Cake", "Angry Birds Cake", "Ham and Cheese Panini", ""]
    
    //Add thumbnails to display
    var thumbnails: [String] = ["egg_benedict.jpg", "mushroom_risotto.jpg", "full_breakfast.jpg", "hamburger.jpg", "ham_and_egg_sandwich.jpg", "creme_brelee.jpg", "white_chocolate_donut.jpg", "starbucks_coffee.jpg", "vegetable_curry.jpg", "instant_noodle_with_egg.jpg", "noodle_with_bbq_pork.jpg", "japanese_noodle_with_pork.jpg", "green_tea.jpg", "thai_shrimp_cake.jpg", "angry_birds_cake.jpg", "ham_and_cheese_panini.jpg", ""];
    
    //Set the number of rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.items.count;
    }
    
    //Create the cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
//        var identifier = "cell"
        
//        if indexPath.row % 2 == 1{
//            identifier = "cell2"
//        }
//        
//        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier(identifier)! as UITableViewCell
//
//        cell.textLabel?.text = self.items[indexPath.row]
//        cell.imageView?.image = UIImage(named: self.thumbnails[indexPath.row])
      
        
        var nibs = NSBundle.mainBundle().loadNibNamed("SimpleTableCell", owner: self, options: nil)
        let tableCell:SimpleTableCell = nibs[0] as! SimpleTableCell
        
        tableCell.nameLabel.text = self.items[indexPath.row]
        tableCell.prepTimeLabel.text = "Prep Time: "
        tableCell.thumbnailImageView.image = UIImage(named: self.thumbnails[indexPath.row])
        
        return tableCell
    }
    
    //table view cell height
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 78.0;
    }
    
    //event for table view
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        //        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        print("You selected cell #\(indexPath.row)!")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

