//
//  UserListResponse.swift
//  TestApp
//
//  Created by Tharindu Ketipearachchi on 11/26/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import ObjectMapper

class UserListResponse: APIModel {
    
    var page: NSInteger?
    var perPage: NSInteger?
    var total: NSInteger?
    var totalPages: NSInteger?
    var data: [User]?
    
    
    override func mapping(map: Map) {
        page <- map["page"]
        perPage <- map["per_page"]
        total <- map["total"]
        totalPages <- map["total_pages"]
        data <- map["data"]
    }

}
