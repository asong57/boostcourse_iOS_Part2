//
//  ViewController.swift
//  TapGesture
//
//  Created by asong on 2021/08/19.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    @IBAction func tapView(_ sender: UITapGestureRecognizer){
        self.view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Self.tapView(_:)))
        self.view.addGestureRecognizer(tapGesture)
    
    }


}

