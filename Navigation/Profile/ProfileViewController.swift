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
        
        let constraints = [
            profileHV.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHV.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 0),
            profileHV.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 0),
            profileHV.heightAnchor.constraint(equalToConstant: 220)
        
        ]
        view.setNeedsLayout()
        view.layoutIfNeeded()
        NSLayoutConstraint.activate(constraints)
        
      
        
        

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
