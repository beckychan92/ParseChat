//
//  ViewController.swift
//  lab4
//
//  Created by Becky Chan on 2/22/17.
//  Copyright © 2017 Becky Chan. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    func signUp(_ sender: Any) {
        let user = PFUser()
        user.username = "myUsername"
        user.password = "myPassword"
        user.email = "email@example.com"
        
        user["phone"] = "123-456-7890"
        
        user.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                let errorString = error.localizedDescription
                print("ok")
            
                }else {
                    print("it worked")
            }
        }
    }
    
    
    
    @IBOutlet weak var signUp2: UIButton!
    
    
    
    
    @IBAction func login(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUp2.addTarget(self, action: #selector(signUp), for: .touchUpInside)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

