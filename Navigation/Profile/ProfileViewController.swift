//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Pavel Medvedev on 30.08.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    var shareView = ProfileHeaderVIew()

        override func loadView() {
            view = shareView
        }
   
      
    override func viewDidLoad() {
        super.viewDidLoad()
        //указываем цвет
        view.backgroundColor = .lightGray
        
        //создаем экземпляр класса ProfileHeaderView
        let profileHV = ProfileHeaderVIew()
        
        //Добавляем его в качестве subview
        view.addSubview(profileHV)
        title = "Profile"

        viewWillLayoutSubviews()
        
        
      
        
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
