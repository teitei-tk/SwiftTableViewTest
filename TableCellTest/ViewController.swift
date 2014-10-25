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

    override func viewDidLoad() 
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.fetchApiData()
        self.initializeTableView()
    }
    
    override func didReceiveMemoryWarning() 
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func fetchApiData()
    {
        let fetchUrl = NSURL(string: Urls.RANDOM())
        let apiRequest = NSURLRequest(URL: fetchUrl!)
        let connection: NSURLConnection = NSURLConnection(request: apiRequest, delegate: self, startImmediately: false)!

        NSURLConnection.sendAsynchronousRequest(
            apiRequest,
            queue: NSOperationQueue.mainQueue(),completionHandler:
            self.fetchCellData
        )
    }

    func fetchCellData(res: NSURLResponse!, data: NSData!, error: NSError!) 
    {
        for cellName in ["hoge", "fuga"] {
            self.tableCells.append(Cell(name: cellName, imageName: "test_image"))
        }
        
        dispatch_async(dispatch_get_main_queue(), {
            self.tableView.reloadData()
        })
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

        cell.initForTableCell(self.tableCells[indexPath.row])
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.orangeColor()
        }

        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.tableCells.count
    }
}

