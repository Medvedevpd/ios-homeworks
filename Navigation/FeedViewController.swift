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
        
        //указываем цвет фона
        view.backgroundColor = .systemGreen
                
        //создаем кнопку для перехода на пост
        let postButton = UIButton.init(frame: CGRect(x: 50, y: 100, width: 50, height: 100))
        
        //указываем экземплря для PostViewController
        let postVC = PostViewController()
        
        //указываем основные характеристики кнопки
        postButton.setTitle("Post", for: .normal)
        postButton.setTitleColor(UIColor.black, for: .normal)
        postButton.addTarget(postVC, action: #selector(buttonClick), for: UIControl.Event.touchUpInside)
    
       //добавляем ее отображение на экране
        self.view.addSubview(postButton)
        
    }
    //указываем функционал работы кнопки
    @objc func buttonClick(sender: UIButton) {
        print("click")
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
        
    }
    
    //указываем структуру отображени] в последующем тайтла
    struct Post {
        var title: String
    }
    
    var post = Post(title: "Head title")
}
