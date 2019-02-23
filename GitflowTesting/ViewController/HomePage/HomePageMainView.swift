//
//  HomePageMainView.swift
//  GitflowTesting
//
//  Created by yu fai on 17/2/2019.
//  Copyright © 2019 YuFai. All rights reserved.
//

import UIKit

class HomePageMainView: UIView {
    
    // MARK: Data
    
    // MARK: Outlet
    
    var firstFunctionButton: UIButton!
    var secondFunctionButton: UIButton!
    
    // MARK: func
    
    // MARK: Class life cycle
//    UIColor(r: 80, g: 101, b: 161, a: 1)
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        firstFunctionButton = UIButton(type: .system)
        firstFunctionButton.setTitleColor(UIColor.white, for: UIControl.State())
        firstFunctionButton.backgroundColor = UIColor.init(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        firstFunctionButton.setTitle("First Function", for: UIControl.State())
        firstFunctionButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        secondFunctionButton = UIButton(type: .system)
        secondFunctionButton.setTitleColor(UIColor.white, for: UIControl.State())
        secondFunctionButton.backgroundColor = UIColor.init(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        secondFunctionButton.setTitle("Second Function", for: UIControl.State())
        secondFunctionButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        self.addSubview(firstFunctionButton)
        self.addSubview(secondFunctionButton)
        
        firstFunctionButton.translatesAutoresizingMaskIntoConstraints = false
        secondFunctionButton.translatesAutoresizingMaskIntoConstraints = false
        
        autolayoutInit()
    }
    
    //AutoLayout init
    func autolayoutInit(){
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-20-[v1(==v0)]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: [:], views: ["v0":firstFunctionButton, "v1":secondFunctionButton]))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-160-[v0(48)]", options: NSLayoutConstraint.FormatOptions(), metrics: [:], views:["v0":firstFunctionButton]))
        
        self.addConstraint(NSLayoutConstraint(item: secondFunctionButton, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: firstFunctionButton, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: secondFunctionButton, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: firstFunctionButton, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 0))
    }
    
    convenience init(target: UIViewController){
        self.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
