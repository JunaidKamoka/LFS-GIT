//
//  ArenaListTVC.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 08/04/2022.
//

import UIKit

class ArenaListTVC: UITableViewCell {
    
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblDesc : UILabel!
    @IBOutlet weak var btnAccept : UIButton!
    @IBOutlet weak var btnDecline : UIButton!
    @IBOutlet weak var img : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
