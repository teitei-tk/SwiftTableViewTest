//
//  ViewController.swift
//  TableCellTest
//
//  Created by teitei-tk on 2014/10/05.
//  Copyright (c) 2014年 teitei-tk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.initializeTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initializeTableView()
    {
        var rect = CGRectMake(0, 0, 320, 600)

        self.tableView = UITableView(frame: rect, style: UITableViewStyle.Grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self

        self.view.addSubview(self.tableView)
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var identifer = "cell"
        var cell = MyTableCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: identifer)
        
        cell.textLabel?.text = "hoge"
  
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
 
}

