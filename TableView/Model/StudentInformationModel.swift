//
//  StudentInformationModel.swift
//  TableView
//
//  Created by USER on 05/12/2021.
//

import Foundation
import UIKit

class StudentInformation {
    var StudentImage : UIImage?
    var StudentName : String?
    var StudentID : String?
    var StudentEmail : String?
    var StudentSubject : String?
    
    init(ProfileImage : UIImage?, Name : String?, ID : String?,Subject : String?, Email : String?) {
        self.StudentImage = ProfileImage
        self.StudentName = Name
        self.StudentID = ID
        self.StudentEmail = Email
        self.StudentSubject = Subject
    }
}
