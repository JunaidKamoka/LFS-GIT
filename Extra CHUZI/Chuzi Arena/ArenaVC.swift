//
//  ArenaVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 07/04/2022.
//

import UIKit

class ArenaVC: UIViewController {

    @IBOutlet weak var tblView : UITableView!
    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var btnNext : UIButton!
    @IBOutlet weak var lblChallengeReward : UILabel!
    
    let list = ["Brand Invitations","Upcomming Challenges","Ongoing Challenges"]
    let tableList = [ArenaModel(title: "Pioneer Dance Studio Challenge", desc: "Invitation Expires in 3 Days Brand: Megaworld Corporation",img: UIImage(named: "cvcOpt3")),
                     ArenaModel(title: "Megaworld Christmas Dance Battle Pione.", desc: "Invitation Expires in 10 Days Brand: Megaworld Corporation",img: UIImage(named: "cvcOpt2")),
                     ArenaModel(title: "Pioneer Dance Studio Challenge", desc: "Invitation Expires in 3 Days Brand: Megaworld Corporation", img: UIImage(named: "playIcon"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        
    }


    func setup(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        self.tblView.delegate = self
        self.tblView.dataSource = self
        
        
        self.btnNext.gradientLayer()
        
        lblChallengeReward.attributedText = NSAttributedString(string: "See Challenge Rewards", attributes:
            [.underlineStyle: NSUnderlineStyle.single.rawValue])
    }
    
}

// collection view work
extension ArenaVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopCVC.reuseIdentifier, for: indexPath) as! TopCVC
        let obj = self.list[indexPath.row]
        cell.lblTitle.text = obj
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? TopCVC
        cell?.bgView.backgroundColor = .darkGray
        cell?.lblTitle.textColor = .white
        cell?.bgView.layer.borderColor = UIColor.white.cgColor
        cell?.bgView.layer.borderWidth = 1
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? TopCVC
        cell?.bgView.backgroundColor = .white
        cell?.lblTitle.textColor = .darkGray
        cell?.bgView.layer.borderColor = UIColor.darkGray.cgColor
        cell?.bgView.layer.borderWidth = 1
 
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 30)
    }

}

//tableview work
extension ArenaVC: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ArenaListTVC.reuseIdentifier, for: indexPath) as! ArenaListTVC
        let obj = self.tableList[indexPath.row]
        cell.lblTitle.text = obj.title
        cell.lblDesc.text = obj.desc
        cell.img.image = obj.img
        return cell
        
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        150
//    }
}

extension UIButton{
    func gradientLayer() {
        let l = CAGradientLayer()
        l.frame = self.bounds
        l.colors = [#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.9295322848),UIColor.black.cgColor]
        l.startPoint = CGPoint(x: 0, y: 0.5)
        l.endPoint = CGPoint(x: 1, y: 0.5)
//        l.cornerRadius = 16
        layer.insertSublayer(l, at: 0)
    }
}
