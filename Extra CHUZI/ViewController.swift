//
//  ViewController.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 07/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var tblArr = [MenuModel]()
    var cvcArr = [MenuModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        
        // Do any additional setup after loading the view.
    }

    func setup(){
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tblArr.append(MenuModel(title: "Garima Chaurisa", description: "See your profile", img: UIImage(named: "opt1")))
        self.tblArr.append(MenuModel(title: "Chuzi Arena", description: "See your Brand Challenges and Rewards", img: UIImage(named: "opt2")))
        self.tblArr.append(MenuModel(title: "Performance Details", description: "See your performance and value index", img: UIImage(named: "opt3")))
        self.tblArr.append(MenuModel(title: "Events", description: "See the biggest events on Chuzi", img: UIImage(named: "opt4")))
        
        self.cvcArr.append(MenuModel(title: "Portfolio Value", description: "", img: UIImage(named: "cvcOpt1")))
        self.cvcArr.append(MenuModel(title: "Content Value", description: "", img: UIImage(named: "cvcOpt2")))
        self.cvcArr.append(MenuModel(title: "Rewards", description: "", img: UIImage(named: "cvcOpt3")))
        self.cvcArr.append(MenuModel(title: "LeaderboardRanks", description: "", img: UIImage(named: "cvcOpt4")))
        self.cvcArr.append(MenuModel(title: "Wins and Loss", description: "", img: UIImage(named: "cvcOpt5")))
        self.cvcArr.append(MenuModel(title: "Value Analytics", description: "", img: UIImage(named: "cvcOpt6")))
        self.cvcArr.append(MenuModel(title: "LeaderboardRanks", description: "", img: UIImage(named: "cvcOpt7")))
        self.cvcArr.append(MenuModel(title: "LeaderboardRanks", description: "", img: UIImage(named: "cvcOpt8")))
    }

}


extension ViewController:UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.tblArr.count+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row + 1) <= self.tblArr.count{
            //for simple table rows
            
            let cell = tableView.dequeueReusableCell(withIdentifier: MenuMainTVC.reuseIdentifier, for: indexPath) as! MenuMainTVC
            let menuObj = self.tblArr[indexPath.row]
            
            cell.initCell(menuObj) {
                //cell tapped
                print(indexPath.row)
            }
            
            return cell
        }else{
            //for table collectionview row
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuExtraTVC", for: indexPath) as! MenuExtraTVC
            cell.cvArr = self.cvcArr
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row + 1) <= self.tblArr.count{
            return 100
            
        }else{
            return 420
        }
    }
    
}

extension UIView{
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
