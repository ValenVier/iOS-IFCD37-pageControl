//
//  pageControl2ViewController.swift
//  pageControl
//
//  Created by Javier Rodríguez Valentín on 23/09/2021.
//

import UIKit

class pageControl2ViewController: UIViewController {

    @IBOutlet weak var pag1: UITextView!
    @IBOutlet weak var pag2: UITextView!
    @IBOutlet weak var pag3: UITextView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var array:[UITextView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.numberOfPages = 3
        
        //el color de la página actual
        pageControl.currentPageIndicatorTintColor = UIColor(red: (50/255.0), green: (50/255.0), blue: (50/255.0), alpha: 1.0)
        
        //el color del resto de las páginas
        pageControl.pageIndicatorTintColor = .lightGray
        
        //color de fondo
        pageControl.backgroundColor = .orange
        
        //la página de inicio
        pageControl.currentPage = 0
        
        //cambiar el tamaño del page control
        pageControl.transform = CGAffineTransform(scaleX: 2, y: 2)
        
        //cambiar solo el redondo, hay que hacerlo en cada action también, no lo hace muy bien
        pageControl.subviews.forEach{
            $0.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
        
        array = [pag1, pag2, pag3]
        pageControlAction(self)
        
    }
    
    @IBAction func pageControlAction(_ sender: Any) {
        for item in array{
            item.isHidden = true
        }
        array[pageControl.currentPage].isHidden = false
    }
    
    

}
