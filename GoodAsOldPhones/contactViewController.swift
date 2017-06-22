//
//  contactViewController.swift
//  GoodAsOldPhones
//
//  Created by Amit on 21/06/17.
//  Copyright © 2017 Amit. All rights reserved.
//

import UIKit

class contactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 850)
    }


}
