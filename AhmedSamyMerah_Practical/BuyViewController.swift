
//  Ahmed Samy Merah 991418644

//  BuyViewController.swift
//  AhmedSamyMerah_Practical
//
//  Created by Ahmed Samy Merah on 2018-11-02.
//  Copyright © 2018 Ahmed Samy Merah. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {

    
    @IBOutlet weak var shirtBox: UITextField!
    
    @IBOutlet weak var pantsBox: UITextField!
    
    @IBOutlet weak var subText: UILabel!
    
    @IBOutlet weak var tax: UILabel!
    
    @IBOutlet weak var totalText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func totalPressed(_ sender: Any) {
        let s = shirtBox.text!
        let p = pantsBox.text!
        
        let qs = Double(s)!
        let qp = Double(p)!
        
        var subtotal = (qs*10) + (qp*15)
        
        var total = subtotal*1.13
        
        var purchaseTax = total - subtotal
        
        subText.text = "$\(subtotal)"
        totalText.text = "$\(total)"
        tax.text = "$\(purchaseTax)"
    }
    
}
