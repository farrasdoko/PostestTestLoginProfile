//
//  ViewController.swift
//  TestLoginProfile
//
//  Created by Gw on 24/10/17.
//  Copyright © 2017 Gw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func b(_ sender: Any) {
        if (username.text == "rpl2idn") && (pass.text == "kitabisa") {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //check what segue with name passData is available or not
                if(segue.identifier == "checkData"){
                    let sendData = segue.destination as! Input
                }
    }
        }else if (username.text == "") && (pass.text == ""){
            let alertController = UIAlertController(title: "Warning", message: "The Column can't be Empty", preferredStyle : .alert); alertController.addAction(UIAlertAction(title: "OK", style: .default,handler: nil));present(alertController, animated: true, completion: nil)
        
        }else{
            let alertController = UIAlertController(title: "Warning", message: "Username Or Password Wrong", preferredStyle : .alert); alertController.addAction(UIAlertAction(title: "OK", style: .default,handler: nil));present(alertController, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
