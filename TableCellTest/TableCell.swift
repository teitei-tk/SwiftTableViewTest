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
    var imageData:UIImageView?

    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)

        self.label = UILabel()
        self.imageData = UIImageView()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func initForTableCell(cell:Cell)
    {
        self.label!.frame = CGRectMake(75, 0, 60, 40)
        self.label!.text  = cell.name

//      let url = NSURL.URLWithString(cell.imageName)
//      let imageData: NSData = NSData(contentsOfURL: url)
        self.imageData!.frame = CGRect(x: 8, y: (72 - 64 ) / 2, width: 64, height: 64)
        self.imageData!.image = UIImage(contentsOfFile: cell.imageName)

        self.contentView.addSubview(self.label!)
        self.contentView.addSubview(self.imageData!)
    }
}
