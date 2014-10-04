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
    var label:UILabel?
    let identifer:String = "cell"

    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)

        var rect = CGRectMake(10, 0, 60, 30)

        self.label = UILabel()
        self.label!.frame = rect
        self.label!.textColor = UIColor.redColor()

        self.contentView.addSubview(self.label!)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
