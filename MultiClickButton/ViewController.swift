//
//  ViewController.swift
//  MultiClickButton
//
//  Created by 夏天 on 2020/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mutiClickButton = MutiClickButton(count: 3)
        view.addSubview(mutiClickButton)
        mutiClickButton.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
    }


}

