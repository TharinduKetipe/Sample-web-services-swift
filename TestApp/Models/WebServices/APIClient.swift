//
//  APIClient.swift
//  TestApp
//
//  Created by Tharindu Ketipearachchi on 11/25/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import SwiftyJSON

class APIClient: NSObject {
    
    enum APIResponseStatus : Int {
        case Success = 200
        case SuccessAlso = 201
        case ValidationError = 422
        case Error = 212
        case CommonError = 213
        case BadRequest = 400
        case UnAuthorized = 403
        case NotFound = 404
        case InternalServerError = 500
        case Other
    }
    
    private let apiKey = ""
    
    func getHTTPHeaders() -> HTTPHeaders? {
        return ["Content-Type" : "application/json"];
    }

}

extension APIClient {
    func getUserList (url:URL, params:[String : Any?], completion:@escaping (APIResponseStatus, UserListResponse) -> Void)  {
        let request = Alamofire.request(url,
                                        method: .get,
                                        parameters: params ,
                                        encoding: JSONEncoding.default,
                                        headers: self.getHTTPHeaders())

        request.responseObject{ (response:DataResponse<UserListResponse>) in
           
            completion(APIClient.APIResponseStatus(rawValue: (response.response?.statusCode)!)!, response.result.value!)
        }
    }
    
    func register (url:URL, params:[String : Any?], completion:@escaping (APIResponseStatus, RegisterResponse) -> Void)  {
        let request = Alamofire.request(url,
                                        method: .post,
                                        parameters: params ,
                                        encoding: JSONEncoding.default,
                                        headers: self.getHTTPHeaders())
        
        request.responseObject{ (response:DataResponse<RegisterResponse>) in
            
            completion(APIClient.APIResponseStatus(rawValue: (response.response?.statusCode)!)!, response.result.value!)
        }
    }
}
