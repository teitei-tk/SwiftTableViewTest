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
    var tableCells: [Cell] = [Cell]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.fetchCellData()
        self.initializeTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func fetchCellData()
    {
        for cellName in ["hoge", "fuga"]  {
            self.tableCells.append(Cell(name: cellName))
        }
    }
    
    func initializeTableView()
    {
        let rect = CGRectMake(0, 0, 640, 740)

        self.tableView = UITableView(frame: rect, style: UITableViewStyle.Grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self

        self.view.addSubview(self.tableView)
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let identifer = "cell", cell = MyTableCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: identifer)

        cell.initTableCell(self.tableCells[indexPath.row])

        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.tableCells.count
    }
}

