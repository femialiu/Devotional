//
//  DevotionalsViewController.swift
//  Devotional
//
//  Created by Femi Aliu on 04/10/2021.
//

import UIKit

class DevotionalsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10, width: view.frame.size.width - 20, height: view.frame.size.height - 20))
        scrollView.backgroundColor = .green
        view.addSubview(scrollView)
        
        let topButton = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        topButton.backgroundColor = .blue
        scrollView.addSubview(topButton)
        
        let bottomButton = UIButton(frame: CGRect(x: 20, y: 2000, width: 100, height: 100))
        bottomButton.backgroundColor = .blue
        scrollView.addSubview(bottomButton)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
        
    }


}


/*
 two horizontal scrolling collection views
    - months - january - december
    - categories
 when you click on a collection view, you will see the items in it displayed in a list
 */
