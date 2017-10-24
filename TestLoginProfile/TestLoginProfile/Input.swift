//
//  Input.swift
//  TestLoginProfile
//
//  Created by Gw on 24/10/17.
//  Copyright © 2017 Gw. All rights reserved.
//

import UIKit

class Input: UIViewController {

    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var kelas: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var school: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var profile: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //mengecek apakah segue dengan nama passData ada atau tidak
        if (segue.identifier == "passData"){
            //deklarasi kirimData sebagai destinasi segue dengan nama View Controller: GetDataViewController
            let kirimData = segue.destination as! dataViewController
            
            //put data yang akan dikirim
            //mengirimkan data username
            kirimData.username = profile.text!
            //mengirimkan data password
            kirimData.password = password.text!
            //mengirimkan data email
            kirimData.Email = email.text!
            kirimData.Class = kelas.text!
            kirimData.Age = age.text!
            kirimData.School = school.text!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
