//
//  User.swift
//  TestApp
//
//  Created by Tharindu Ketipearachchi on 11/26/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import ObjectMapper

class User: APIModel {
    var userId: NSInteger?
    var firstNaame: NSString?
    var lastName: NSString?
    var avator: NSString?
    
    override func mapping(map: Map) {
        userId <- map["id"]
        firstNaame <- map["first_name"]
        lastName <- map["last_name"]
        avator <- map["avatar"]
    }

}
