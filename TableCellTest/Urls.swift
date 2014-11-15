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
    static let API_BASE:String  = "http://api.tiqav.com/"
    static let IMAGE_URL:String = "http://img.tiqav.com/"
}

class Urls
{
    class func API_BASE(path: String) -> String
    {
        return API_URLS.API_BASE + path
    }

    class func URL_BASE(path: String) -> String
    {
        return API_URLS.IMAGE_URL + path
    }

    class func RANDOM() -> String
    {
        return Urls.API_BASE("search/random.json")
    }

    class func API_IMAGE_URL(fileName: String) -> String
    {
        return Urls.URL_BASE(fileName)
    }
}
