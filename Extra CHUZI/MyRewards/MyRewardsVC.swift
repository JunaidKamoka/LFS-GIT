//
//  MyRewardsVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 08/04/2022.
//

import UIKit

class MyRewardsVC: UIViewController {
    
    @IBOutlet weak var tblView : UITableView!
    let tblList = ["1","2","3","4","5","6","7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
        
    }

    func setup(){
        self.tblView.delegate = self
        self.tblView.dataSource = self
        
    }
}

extension MyRewardsVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tblList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyRewardsListTVC.reuseIdentifier, for: indexPath) as! MyRewardsListTVC
        let obj = self.tblList[indexPath.row]
        cell.lblTitle.text = obj
        cell.lblDate.text = obj
        cell.lblAmount.text = obj
        return cell
    }
}
