//
//  ViewController.swift
//  TestApp
//
//  Created by Tharindu Ketipearachchi on 11/25/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let client = APIClient()
        let url1 = URL(string:Constants.basUrl01 + APIRequestMetod.userList)
        
        client.getUserList(url: url1!, params: [:]) { (status, response) in
            print(status,response)
        }
        
        let url2 = URL(string:Constants.basUrl01 + APIRequestMetod.register)
        let params = [APIRequestKeys.email:"sydney@fife" , APIRequestKeys.password: "pistol"]
        
        client.register(url: url2!, params: params) { (status, response) in
            print(status,response)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "tableButtonSegue" ) {
            
        }
    }


}

