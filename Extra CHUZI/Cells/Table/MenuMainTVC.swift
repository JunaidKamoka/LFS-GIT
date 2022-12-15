//
//  MenuMainTVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 07/04/2022.
//

import UIKit
import RxSwift
import RxCocoa
import RxRelay

typealias VoidCompletionBlock = () -> Void

class MenuMainTVC: UITableViewCell {

    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblDesc : UILabel!
    @IBOutlet weak var img : UIImageView!
    @IBOutlet weak var btnCell : UIButton!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell(_ currentMenuObj : MenuModel?, btnTap: @escaping VoidCompletionBlock){
        
        self.lblTitle.text = currentMenuObj?.title
        self.lblDesc.text = currentMenuObj?.description
        self.img.image = currentMenuObj?.img
        
        
        btnCell.rx.tap.bind{
            btnTap()
        }.disposed(by: disposeBag)
    }
    
    private let disposeBag: DisposeBag = .init()
    

}
