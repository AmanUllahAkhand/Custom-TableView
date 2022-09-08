//
//  FriendInformationModel.swift
//  TableView
//
//  Created by USER on 08/09/2022.
//

import Foundation
import UIKit

class FriendInformation {
    var FriendImage : UIImage?
    var FriendName : String?
    var FriendAddress : String?
    var FriendPhoneNo : String?
    var FriendEmail : String?
    
    init(ProfileImage : UIImage?, Name : String?, Address : String?, PhoneNo : String?, Email : String?) {
        self.FriendImage = ProfileImage
        self.FriendName = Name
        self.FriendAddress = Address
        self.FriendPhoneNo = PhoneNo
        self.FriendEmail = Email
    }
}
