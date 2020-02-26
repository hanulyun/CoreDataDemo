//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by HanulYun-Comp on 2020/02/26.
//  Copyright © 2020 Yun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Devices: String {
        case iPhone = "iPhone"
        case iPad = "iPad"
        case iMac = "iMac"
        case macbookPro = "macbookPro"
    }

    // 1: Danny, 2: Angie, 3: Eddy, 4: Tony
    override func viewDidLoad() {
        super.viewDidLoad()
    
        saveNewUser(1, name: "Danny")
//        deleteUser(1)
        getAllUsers()
    }
    
    fileprivate func getAllUsers() {
        let users: [Users] = CoreDataManager.shared.getUsers()
        let userNames: [String] = users.map({$0.name!})
        let userDevices: [String]? = users.filter({$0.name == "Danny"}).first?.devices
        print("allUsers = \(userNames)")
        print("Danny's Devices = \(userDevices)")
    }
    
    // 새로운 유저 등록
    fileprivate func saveNewUser(_ id: Int64, name: String) {
        CoreDataManager.shared
            .saveUser(id: id, name: name, age: 16, date: Date(),
                      devices: [Devices.iMac.rawValue, Devices.iPad.rawValue]) { onSuccess in
                        print("saved = \(onSuccess)")
        }
    }
    
    fileprivate func deleteUser(_ id: Int64) {
        CoreDataManager.shared.deleteUser(id: id) { onSuccess in
            print("deleted = \(onSuccess)")
        }
    }
}

