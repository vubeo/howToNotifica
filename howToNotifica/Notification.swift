//
//  Notification.swift
//  howToNotifica
//
//  Created by Đỗ Hoàng Vũ on 3/19/18.
//  Copyright © 2018 Đỗ Hoàng Vũ. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let myNotification = Notification.Name.init("myNotification")
}

class Notification1: UIViewController {
    
    @IBOutlet weak var namelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handlerResult),
                                               name: .myNotification,
                                               object: nil)
    }
    
    @objc func handlerResult(_ notification : Notification) {
       let vu = notification.object

        self.namelabel.text = String(describing: vu)
//            }
        
    }
    
    
    
}
//---------------------------------------------------------------------------------------------------------


class Notification2: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var data :String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: Any) {
        NotificationCenter.default.post(name: .myNotification, object: textField.text)
    }
    
}
