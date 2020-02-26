//
//  Users+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by HanulYun-Comp on 2020/02/26.
//  Copyright © 2020 Yun. All rights reserved.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int64
    @NSManaged public var signupDate: Date?
    @NSManaged public var devices: [String]?
    @NSManaged public var id: Int64

}
