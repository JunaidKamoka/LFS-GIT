//
//  contentValueVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 09/04/2022.
//

import UIKit
import Malert

class contentValueVC: UIViewController {

    @IBOutlet weak var cv : UICollectionView!
    var contentList = [
        ContentVideoModel(userName: "Username 1", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg")),ContentVideoModel(userName: "Username 1", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg")),
        ContentVideoModel(userName: "Username 2", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg")),ContentVideoModel(userName: "Username 1", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg")),ContentVideoModel(userName: "Username 1", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg")),
        ContentVideoModel(userName: "Username 3", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg")),
        ContentVideoModel(userName: "Username 4", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg")),ContentVideoModel(userName: "Username 1", userDesc: "@userdesc 1", points: "1,111", upDown: "+13%", date: "Updated 10:00 PM 8/15/2021", title: "chuzi dance challenge", titleDesc: "This is my first dance challenge on chuzi! Please vote for me please please! #ChuziVS #DanceChallenge See More.", imgVideoThumbnail: UIImage(named: "contentTestImg"), imgUser:UIImage(named: "contentTestImg"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

    }
    
    @IBAction func btnTst(){
        let resultEndAlertView = resultEndAlertView.instantiateFromNib()
        let resultEndAlert = Malert(customView: resultEndAlertView)
        
        resultEndAlertView.setup {
            print("OKK")
        }
        self.present(resultEndAlert, animated: true, completion: nil)
    }
    
    func setup(){
        
        
        
        self.cv.delegate = self
        self.cv.dataSource = self
        self.cv.reloadData()
        
    }
    
}
 // collection view work
    extension contentValueVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            contentList.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: contentValueCVC.reuseIdentifier, for: indexPath) as! contentValueCVC
            let obj = self.contentList[indexPath.row]
            
            cell.lblUserName.text = obj.userName
            cell.lblUserDesc.text = obj.userDesc
            cell.lblPoints.text = obj.points
            cell.lblUpDown.text = obj.upDown
            cell.lblDate.text = obj.date
            cell.imgVideoThumbnail.image = obj.imgVideoThumbnail
            
            return cell
        }
        
//        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//            let cell = collectionView.cellForItem(at: indexPath) as? TopCVC
//            cell?.bgView.backgroundColor = .darkGray
//            cell?.lblTitle.textColor = .white
//            cell?.bgView.layer.borderColor = UIColor.white.cgColor
//            cell?.bgView.layer.borderWidth = 1
//
//        }
//
//        func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//            let cell = collectionView.cellForItem(at: indexPath) as? TopCVC
//            cell?.bgView.backgroundColor = .white
//            cell?.lblTitle.textColor = .darkGray
//            cell?.bgView.layer.borderColor = UIColor.darkGray.cgColor
//            cell?.bgView.layer.borderWidth = 1
//
//        }
//
//
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 150, height: 30)
        }

    }
