//
//  ViewController.swift
//  tinderLikeApp
//
//  Created by kazutaka.ando on 2019/10/29.
//  Copyright © 2019 Kazando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // subViews for topStackView Declared
        let subViews = [UIColor.gray, UIColor.darkGray, UIColor.black].map{
            (color) -> UIView in
            let v = UIView()
            v.backgroundColor = color
            return v
        }

        //topStackView Declared
        let topStackView = UIStackView(arrangedSubviews: subViews)
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
            
        // blueView Declared
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        //bottom row of buttons
        let buttomSubview = [UIColor.red, .green, .blue, .yellow, .purple].map{ (color) -> UIView in
            let v = UIView()
            v.backgroundColor = color
            return v
        }
        
        let buttonStackView = UIStackView(arrangedSubviews: buttomSubview)
        buttonStackView.distribution = .fillEqually
        buttonStackView.heightAnchor.constraint(equalToConstant: 120).isActive = true

        // overallStackView Declared
        // input redview and blueView into subview of stackView
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonStackView])
        overallStackView.axis = .vertical
        
        //add stackView into a view of ViewController
        view.addSubview(overallStackView)
        
        //this function comes from UI+Extension
        overallStackView.fillSuperview()
    }
}
