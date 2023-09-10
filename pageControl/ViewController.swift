//
//  ViewController.swift
//  pageControl
//
//  Created by Javier Rodríguez Valentín on 23/09/2021.
//https://www.ioscreator.com/tutorials/page-control-ios-tutorial

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var `switch`: UIButton!
    @IBOutlet weak var array1: UIButton!
    @IBOutlet weak var scroll: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func switchAction(_ sender: Any) {
        performSegue(withIdentifier: "sg1", sender: self)
    }
    
    @IBAction func array1Action(_ sender: Any) {
        performSegue(withIdentifier: "sg2", sender: self)
    }
    @IBAction func scrollAction(_ sender: Any) {
        performSegue(withIdentifier: "sg3", sender: self)
    }

}

