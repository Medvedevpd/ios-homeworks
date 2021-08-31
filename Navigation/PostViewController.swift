//
//  PostViewController.swift
//  Navigation
//
//  Created by Pavel Medvedev on 30.08.2021.
//

import UIKit

class PostViewController: UIViewController {

    var tbButton: UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //заголовок экрана
        title = "Head title"
        
        //цвет фона
        view.backgroundColor = .systemBlue
        
        //создаем кнопку
        tbButton = UIBarButtonItem(title: "Bar", style: .plain, target: self, action: #selector(tbClick))
        
        //указываем, что кнопка должна находиться справа
        self.navigationItem.rightBarButtonItem = tbButton
        
    }
    //создаем функцию для работы кнопки
    @objc func tbClick(sender: UIBarButtonItem) {
       
        print("Bar click")
        
        let infoVC = InfoViewController()
        
        self.navigationController?.present(infoVC, animated: true, completion: nil)
}
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



