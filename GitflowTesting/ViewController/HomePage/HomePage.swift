//
//  HomePage.swift
//  GitflowTesting
//
//  Created by yu fai on 14/2/2019.
//  Copyright © 2019 YuFai. All rights reserved.
//

import UIKit

class HomePage: UIViewController {
    
    // MARK: Data
    
    let mainView = HomePageMainView()
    
    // MARK: func
    
    // MARK: View life cycle

//    override func viewWillAppear(_ animated: Bool) {
//        self.view = mainView
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        autoLayoutInit()
    }
    
    func autoLayoutInit(){
        
    }
    
}
