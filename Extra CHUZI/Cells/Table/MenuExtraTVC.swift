//
//  MenuExtraTVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 07/04/2022.
//

import UIKit

class MenuExtraTVC: UITableViewCell {
    
    @IBOutlet weak var optionsCV : UICollectionView!
    var cvArr = [MenuModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.optionsCV.delegate = self
        self.optionsCV.dataSource = self
        optionsCV.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//bottom collection view setup

extension MenuExtraTVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cvArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCVC.reuseIdentifier, for: indexPath) as! MenuCVC
        let obj = self.cvArr[indexPath.row]
        cell.initCell(obj)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 120)
    }
}
