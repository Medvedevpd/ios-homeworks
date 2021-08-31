//
//  FeedViewController.swift
//  Navigation
//
//  Created by Pavel Medvedev on 30.08.2021.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
                
        let postButton = UIButton.init(frame: CGRect(x: 50, y: 100, width: 50, height: 100))
        
        let postVC = PostViewController()
        
        postButton.setTitle("Post", for: .normal)
        postButton.setTitleColor(UIColor.black, for: .normal)
        postButton.tag = 2
        postButton.addTarget(postVC, action: #selector(buttonClick), for: UIControl.Event.touchUpInside)
    
       
        self.view.addSubview(postButton)
        
       
    }
    @objc func buttonClick(sender: UIButton) {
        print("click")
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
        
    }
}
