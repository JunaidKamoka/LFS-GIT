//
//  RedeemRedemptionVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 12/04/2022.
//

import UIKit

class RedeemRedemptionVC: UIViewController {

    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var btnNext : UIButton!
    
    let list = ["Transfer","Load","Voucher","Discount"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
        // Do any additional setup after loading the view.
    }

    func setup(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
}

// collection view work
extension RedeemRedemptionVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
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
    

}
