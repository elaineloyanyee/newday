//
//  ViewController.swift
//  actionsheet
//
//  Created by linc on 2020/01/20.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var dayImageView: UIImageView!
    @IBOutlet weak var nightImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGesture()
    }
    
    func addGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.showActionSheet))
        view.addGestureRecognizer(tap)
    }
    
    @objc func showActionSheet() {
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "최소", style: .cancel, handler: nil)
        
        let day = UIAlertAction(title: "라이트", style: .default) { action in
            self.changeDayTime(isDay: true)
        }
        
        let night = UIAlertAction(title: "다크", style: .default) { action in
            self.changeDayTime(isDay: false)
        }
        
        actionSheet.addAction(day)
        actionSheet.addAction(night)
        actionSheet.addAction(cancel)
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    func changeDayTime(isDay: Bool) {
        
        UIView.animate(withDuration: 0.4) {
            self.dayImageView.alpha = isDay ? 1.0 : 0.0
            self.nightImageView.alpha = isDay ? 0.0 : 1.0
    }
   

       
        
        
    
   }
    

   
    
}

