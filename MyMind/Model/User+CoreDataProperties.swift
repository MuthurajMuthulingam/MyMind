//
//  User+CoreDataProperties.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/3/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension User {

    @NSManaged var id: NSNumber?
    @NSManaged var name: String?
    @NSManaged var username: String?
    @NSManaged var password: String?
    @NSManaged var email: String?
    @NSManaged var phone: NSNumber?
    @NSManaged var uuid: String?

}
