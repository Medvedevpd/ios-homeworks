//
//  InfoViewController.swift
//  Navigation
//
//  Created by Pavel Medvedev on 31.08.2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        //создаем кнопку вызывающую предупреждение
        let alarmButton = UIButton.init(frame: CGRect(x: 50, y: 100, width: 50, height: 100))
       
        //прописываем ее свойства
        alarmButton.setTitle("Error", for: .normal)
        alarmButton.setTitleColor(UIColor.black, for: .normal)
        alarmButton.addTarget(self, action: #selector(alarmClick), for: UIControl.Event.touchUpInside)
    
       //добавляем ее видимость
        self.view.addSubview(alarmButton)
    }

    // прописываем функцию по которой она будет работать
    @objc func alarmClick(sender: UIButton) {
    print("alarmClick")
        let alertVC = UIAlertController(title: "Some error", message: "Choos the destiny", preferredStyle: .alert)
        let cancelAlert = UIAlertAction(title: "Live", style: .cancel, handler: .none)
        
        alertVC.addAction(cancelAlert)
        
        let okAlert = UIAlertAction(title: "Die", style: .default, handler: .none)
        
        alertVC.addAction(okAlert)
        present(alertVC, animated: true, completion: nil)
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


