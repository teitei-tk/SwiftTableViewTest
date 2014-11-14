//
//  Urls.swift
//  TableCellTest
//
//  Created by teitei-tk on 2014/10/26.
//  Copyright (c) 2014年 teitei-tk. All rights reserved.
//

import Foundation

struct API_URLS
{
    static let API_BASE:String      = "http://api.tiqav.com/"
    static let API_IMAGE_URL:String = "http://img.tiqav.com/"
}

class Urls
{
    class func API_BASE(path: String) -> String
    {
        return API_URLS.API_BASE + path
    }

    class func RANDOM() -> String
    {
        return Urls.API_BASE("search/random.json")
    }
}
