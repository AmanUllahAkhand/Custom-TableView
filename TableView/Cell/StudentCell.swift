//
//  StudentCell.swift
//  TableView
//
//  Created by USER on 05/12/2021.
//

import UIKit

class StudentCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
       profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        profileImage.clipsToBounds = true
    }
    func SetStudentInformation(information : StudentInformation){
        self.profileImage.image = information.StudentImage
        self.nameLbl.text = "Name : \((information.StudentName)!)"
        self.idLbl.text = "ID: \((information.StudentID)!)"
        self.emailLbl.text = "Email: \((information.StudentEmail)!)"
        self.subjectLbl.text = "Subject: \((information.StudentSubject)!)"
    }
    
    
    func SetFriendInformation(information : FriendInformation){
        self.profileImage.image = information.FriendImage
        self.nameLbl.text = "Name : \((information.FriendName)!)"
        self.idLbl.text = "Address: \((information.FriendAddress)!)"
        self.emailLbl.text = "Email: \((information.FriendEmail)!)"
        self.subjectLbl.text = "PhoneNo: \((information.FriendPhoneNo)!)"
    }
}
