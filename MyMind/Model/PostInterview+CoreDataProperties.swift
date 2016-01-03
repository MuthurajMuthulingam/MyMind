//
//  PostInterview+CoreDataProperties.swift
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

extension PostInterview {

    @NSManaged var id: NSNumber?
    @NSManaged var company: String?
    @NSManaged var notes: String?
    @NSManaged var interview: PostInterview?

}
