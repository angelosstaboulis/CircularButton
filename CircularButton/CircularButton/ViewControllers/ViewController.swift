//
//  ViewController.swift
//  CircularButton
//
//  Created by Angelos Staboulis on 16/4/21.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet var btnCircular: CircularButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnCircular.moveToPosition(rect: CGRect(x: 100, y: 100, width: 134, height: 135))
      
        // Do any additional setup after loading the view.
    }


}

