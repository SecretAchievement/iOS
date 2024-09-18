//
//  ViewControllerTwo.swift
//  UIKit Lesson 2 (View Controllers)
//
//  Created by Serj Haben on 18.06.2024.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    
    //MARK: = Method
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        helo()
    }
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }
    
    //MARK: - Func
    func helo() {
        print("hi")
    }
}
