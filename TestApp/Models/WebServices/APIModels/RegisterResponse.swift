//
//  RegisterResponse.swift
//  TestApp
//
//  Created by Tharindu Ketipearachchi on 11/26/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import ObjectMapper

class RegisterResponse: APIModel {
    
    var token: String?
    
    
    override func mapping(map: Map) {
        token <- map["token"]
        
    }
}
