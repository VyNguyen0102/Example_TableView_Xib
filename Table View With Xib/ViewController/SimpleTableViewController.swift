//
//  SimpleTableViewController.swift
//  Table View With Xib
//
//  Created by VyNV on 12/23/15.
//  Copyright © 2015 VyNV. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    convenience init(){
        self.init(nibName: "SimpleTableViewController", bundle: nil)
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    let data = ["cells",
        "are", "init", "with", "xib",
        "file", " - ", "Demo", "Created",
        "By", "Vỹ", "Nguyễn", "-",
        "-", "-", "-", "-"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let cellNib = UINib(nibName: SimpleTableViewCell.cellNibName , bundle: NSBundle.mainBundle())
        tableView.registerNib(cellNib, forCellReuseIdentifier: SimpleTableViewCell.cellIdentifier)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(SimpleTableViewCell.cellIdentifier, forIndexPath: indexPath) as! SimpleTableViewCell
        cell.label.text = data[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}
