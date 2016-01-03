//
//  Interview+CoreDataProperties.swift
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

extension Interview {

    @NSManaged var id: NSNumber?
    @NSManaged var companyName: String?
    @NSManaged var interviewDate: NSDate?
    @NSManaged var shortJD: String?
    @NSManaged var notificationInterval: NSNumber?
    @NSManaged var postInterview: Interview?

}
