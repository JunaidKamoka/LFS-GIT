//
//  MyRewardsListTVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 08/04/2022.
//

import UIKit

class MyRewardsListTVC: UITableViewCell {

    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblBrandVote : UILabel!
    @IBOutlet weak var lblDate : UILabel!
    @IBOutlet weak var lblAmount : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
