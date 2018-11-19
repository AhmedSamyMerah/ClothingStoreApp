
//  Ahmed Samy Merah 991418644
//  WebViewController.swift
//  AhmedSamyMerah_Practical
//
//  Created by Ahmed Samy Merah on 2018-11-02.
//  Copyright © 2018 Ahmed Samy Merah. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let site = URL(string: "http://uniqlo.com/ca/en/")
        let req = URLRequest(url: site!)
        
        webview.loadRequest(req)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
