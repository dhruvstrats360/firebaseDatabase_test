//
//  ViewController.swift
//  firebaseDatabase_test
//
//  Created by Strats 360 on 13/01/23.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    private let dataBase = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(frame: CGRect(x: 50, y: 200, width: view.frame.width - 60, height: 50))
        btn.backgroundColor = .link
        btn.setTitle("Add Entry", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(addNewEntry), for: .touchUpInside)
    }
    @objc func addNewEntry(){
        let object:[String : Any] = [
            "name": "Database Test2" as NSObject,
            "entry 1": "yes"
        ]
        
        // here child string("Something") is some key in our json tree.
//        dataBase.child("Something \(Int.random(in: 0..<100))").setValue(object)
        dataBase.child("Something").setValue(object)

    }
    
    
    


}

