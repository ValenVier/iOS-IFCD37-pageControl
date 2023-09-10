//
//  pageControl3ViewController.swift
//  pageControl
//
//  Created by Javier Rodríguez Valentín on 23/09/2021.
//https://www.ioscreator.com/tutorials/page-control-ios-tutorial

import UIKit

class pageControl3ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pag3: UITextView!
    @IBOutlet weak var pag1: UITextView!
    @IBOutlet weak var pag2: UITextView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var array = ["caballo", "gato", "burro"]
    var frame = CGRect.zero
    
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
        
        //array = [pag1, pag2, pag3]
        //pageControlAction(self)
        
        setupScreens()
        
        scrollView.delegate = self
        
    }
    
    
    @IBAction func pageControlAction(_ sender: Any) {
        
    }
    
    func setupScreens() {
        for index in 0..<array.count {
            // 1.
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            // 2.
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: array[index])
            
            self.scrollView.addSubview(imgView)
        }
        
        // 3.
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(array.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
}
