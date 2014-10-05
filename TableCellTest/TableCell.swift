//
//  TableCell.swift
//  TableCellTest
//
//  Created by teitei-tk on 2014/10/05.
//  Copyright (c) 2014年 teitei-tk. All rights reserved.
//

import UIKit
import Foundation

class MyTableCell: UITableViewCell
{
    let identifer:String = "cell"
    var label:UILabel?

    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)

    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func initTableCell(cell:Cell)
    {
        self.label = UILabel()
        self.label!.frame = CGRectMake(0, 0, 60, 30)
        self.label?.text  = cell.name

        self.contentView.addSubview(self.label!)
    }
}
