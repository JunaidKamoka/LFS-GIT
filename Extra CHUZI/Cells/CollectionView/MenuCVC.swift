//
//  MenuCVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 07/04/2022.
//

import UIKit

class MenuCVC: UICollectionViewCell {
    
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var img : UIImageView!
    
    func initCell(_ currentObj: MenuModel?){
        self.lblTitle.text = currentObj?.title
        self.img.image = currentObj?.img
    }
}
