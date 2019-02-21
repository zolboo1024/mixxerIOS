//
//  URL.swift
//  mixxer
//
//  Created by Erdenebaatar, Zolboo on 2/18/19.
//  Copyright © 2019 Dickinson. All rights reserved.
//

import UIKit
import WebKit
class URLViewController: UIViewController {
    
    @IBOutlet weak var web: WKWebView!
    var passedURL = "https://www.google.com"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadURL(urlString: passedURL)
    }
    
    func loadURL(urlString: String){
        let url = URL(string: urlString)
        let URLrequest = URLRequest(url: url!)
        self.web.load(URLrequest)
    }
}
