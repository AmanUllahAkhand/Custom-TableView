//
//  ViewController.swift
//  TableView
//
//  Created by USER on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var StudentList = [StudentInformation]()
    var FriendList = [FriendInformation]()
    
    var Sections = ["Student List","Friend List"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generatStudentInformation()
        generatFriendInformation()
        
    }
    func generatStudentInformation(){
        StudentList.removeAll()
        StudentList.append(StudentInformation(ProfileImage: UIImage(named: "Mohammad Mazba Ur Rahman"), Name: "Mohammad Mazba Ur Rahman", ID: "1403020001",Subject: "CSE", Email: "MazbaUrRahman@gmail.com"))
        StudentList.append(StudentInformation(ProfileImage: UIImage(named: "Pronay Sarker"), Name: "Pronay Sarker", ID: "1403020002",Subject: "CSE", Email: "PronaySarker@gmail.com"))
        StudentList.append(StudentInformation(ProfileImage: UIImage(named: "Abu Sayed Sabuj"), Name: "Abu Sayed Sabuj", ID: "1403020003",Subject: "CSE", Email: "AbuSayedSabuj@gmail.com"))
        StudentList.append(StudentInformation(ProfileImage: UIImage(named: "Sadat Hossen Himel"), Name: "Sadat Hossen Himel", ID: "1403020004",Subject: "CSE", Email: "SadatHossenHimel@gmail.com"))
        StudentList.append(StudentInformation(ProfileImage: UIImage(named: "Saidul Hasan"), Name: "Saidul Hasan", ID: "1403020005",Subject: "CSE", Email: "SaidulHasan@gmail.com"))
    }
    
    func  generatFriendInformation(){
        FriendList.removeAll()
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"Mohammad Mazba Ur Rahman"), Name: "Mohammad Mazba Ur Rahman", Address: "Dhaka,Bangladesh", PhoneNo: "+88 01716-066882", Email: "MazbaUrRahman@gmail.com"))
        
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"Pronay Sarker"), Name: "Pronay Sarker", Address: "Dhaka,Bangladesh", PhoneNo: "+88 01736-121499", Email: "PronaySarker@gmail.com"))
        
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"Abu Sayed Sabuj"), Name: "Abu Sayed Sabuj", Address: "Cumilla,Bangladesh", PhoneNo: "+88 01869683169", Email: "AbuSayedSabuj@gmail.com"))
        
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"Sadat Hossen Himel"), Name: "Sadat Hossen Himel", Address: "Dhaka,Bangladesh", PhoneNo: "+88 01818-379303", Email: "SadatHossenHimel@gmail.com"))
        
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"Saidul Hasan"), Name: "Saidul Hasan", Address: "Cumilla,Bangladesh", PhoneNo: "+88 01940-410091", Email: "SaidulHasan@gmail.com"))
        
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"MD Alamgir Hossen"), Name: "MD Alamgir Hossen", Address: "Dhaka,Bangladesh", PhoneNo: "+88 01401-126175", Email: "MDAlamgirHossen@gmail.com"))
        
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"Mohibullah Apon"), Name: "Mohibullah Apon (বাদশাহ )", Address: "Cumilla,Bangladesh", PhoneNo: "+88 01860-583110", Email: "MohibullahApon@gmail.com"))
        
        FriendList.append(FriendInformation(ProfileImage: UIImage(named:"Md Shafiun Sikder"), Name: "Md Shafiun Sikder", Address: "Dhaka,Bangladesh", PhoneNo: "+88 01939-692503", Email: "Md Shafiun Sikder@gmail.com"))
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SetupContainer()
    }
    
    func SetupContainer(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.separatorColor = UIColor.red
        self.tableView.reloadData()
    }
}
extension ViewController : UITableViewDelegate{
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
     
        let FooterView = UIView()
        var FooterViewHeight : CGFloat = 0.0
        FooterView.backgroundColor = UIColor.blue
        FooterViewHeight = (section == 0) ? 50  : 100
        FooterView.frame = CGRect(x: 0, y: 0, width: self.tableView.bounds.size.width, height: FooterViewHeight)
        
        let TitleLabel = UILabel (frame: CGRect(x: 20, y: 10, width: FooterView.frame.width - 40, height: FooterView.frame.height - 20))
        TitleLabel.backgroundColor = UIColor.gray
        TitleLabel.textAlignment = .center
        TitleLabel.text = "@amanullah.iOS2005@gmail.com"
        FooterView.addSubview(TitleLabel)
        return FooterView
        
    }
}
    extension ViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return StudentList.count
        }
        return FriendList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        if indexPath.section == 0{
        if indexPath.row < StudentList.count{
        let information = StudentList[indexPath.row]
            cell.SetStudentInformation(information: information)
        }
        }else
        if indexPath.row < FriendList.count{
        let information = FriendList[indexPath.row]
            cell.SetFriendInformation(information: information)
        
        }
        return cell
        }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return Sections[section]
//    }
      func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0{
            return 50
        }
         return 100
     }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        
      var headerViewHeight : CGFloat = 0.0
//        if section == 0{
//            headerviewHeight = 50.0
//        } else { headerviewHeight = 100.0
//        }
        headerView.backgroundColor = UIColor.red
        
        
        headerViewHeight = (section == 0) ? 50  : 100

        
        headerView.frame = CGRect(x: 0, y: 0, width: self.tableView.bounds.size.width, height: headerViewHeight)
        
        let TitleLabel = UILabel (frame: CGRect(x: 20, y: 10, width: headerView.frame.width - 40, height: headerView.frame.height - 20))
        TitleLabel.backgroundColor = UIColor.green
        TitleLabel.textAlignment = .center
        TitleLabel.text = Sections[section]
        headerView.addSubview(TitleLabel)
        return headerView
        
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0{
            return 50
        }
         return 100
     }
    
    
    
    
    
    
}
