//
//  dataViewController.swift
//  TestLoginProfile
//
//  Created by Gw on 24/10/17.
//  Copyright © 2017 Gw. All rights reserved.
//

import UIKit

class dataViewController: UIViewController {
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var labelSchool: UILabel!
     @IBOutlet weak var labelAge: UILabel!
     @IBOutlet weak var labelClass: UILabel!
     @IBOutlet weak var labelUsername: UILabel!
    var username = ""
    var password = ""
    var Email = ""
    var Age = ""
    var School = ""
    var Class = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // memasukkan nilai yang sudah dikirimkan tadi ke label masing2
        labelUsername.text =  "Hello," + username
        labelPassword.text = "Your Password Is: " + password
        labelEmail.text = "Your Email Is: " + Email
        labelSchool.text = "Your School Is: " + School
        labelAge.text = "Your Age Is: " + Age
        labelClass.text = "Your Class Is: " + Class
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

