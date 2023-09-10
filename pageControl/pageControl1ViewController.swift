//
//  pageControl1ViewController.swift
//  pageControl
//
//  Created by Javier Rodríguez Valentín on 23/09/2021.
//

import UIKit

class pageControl1ViewController: UIViewController {
    
    @IBOutlet weak var pag1: UITextView!
    @IBOutlet weak var pag2: UITextView!
    @IBOutlet weak var pag3: UITextView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
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
        ocultarPaginas()
        
    }
    
    @IBAction func pageControlAction(_ sender: Any) {
        ocultarPaginas()
    }
    
    func ocultarPaginas(){ //también se podría hacer con un bucle for y un array en vez de con un switch
        switch pageControl.currentPage {
        case 0:
            pag1.isHidden = false
            pag2.isHidden = true
            pag3.isHidden = true
        case 1:
            pag1.isHidden = true
            pag2.isHidden = false
            pag3.isHidden = true
        case 2:
            pag1.isHidden = true
            pag2.isHidden = true
            pag3.isHidden = false
        default:
            pag1.isHidden = false
            pag2.isHidden = true
            pag3.isHidden = true
        }
    }
}
