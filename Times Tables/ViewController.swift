//
//  ViewController.swift
//  Times Tables
//
//  Created by Chad Duffey on 6/04/2015.
//  Copyright (c) 2015 Chad Duffey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var sliderValue: UISlider!
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timeTable = Int(sliderValue.value * 20)
        
        //update
        cell.textLabel?.text = String(timeTable * (indexPath.row + 1))
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

