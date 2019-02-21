//
//  ViewController.swift
//  mixxer
//
//  Created by Erdenebaatar, Zolboo on 2/18/19.
//  Copyright © 2019 Dickinson. All rights reserved.
//

import UIKit
import SafariServices
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func loginClicked(_ sender: Any) {
        if(CheckInternet.Connection()){
            //self.performSegue(withIdentifier: "loginSegue", sender: self)
            showWebsite(url: "https://www.language-exchanges.org/user/login")

        }
        else {
            self.Alert(Message: "Please connect your device to the Internet")
        }
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        if(CheckInternet.Connection()){
            //self.performSegue(withIdentifier: "signupSegue", sender: self)
            showWebsite(url: "https://www.language-exchanges.org/user/register")
        }
        else {
            self.Alert(Message: "Please connect your device to the Internet")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! URLViewController
        if segue.identifier == "loginSegue" {
            destVC.passedURL = "https://www.language-exchanges.org/user/login"
        }
        else if segue.identifier == "signupSegue" {
            destVC.passedURL = "https://www.language-exchanges.org/user/register"
        }
    }
    func showWebsite(url: String){
        let newurl = URL(string: url)!
        let webVC = SFSafariViewController(url: newurl)
        present(webVC, animated:true, completion: nil)
    }
    func Alert (Message: String){
        let alert = UIAlertController(title: "No Connection", message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

