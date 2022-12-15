//
//  challengeInviteAlertView.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 11/04/2022.
//

import Foundation
import UIKit

class successfullyEarnedAlert : UIView{
    
    class func instantiateFromNib() -> successfullyEarnedAlert{
        return Bundle.main.loadNibNamed("successfullyEarnedAlert", owner: nil, options: nil)!.first as! successfullyEarnedAlert
    }
    
    
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblDesc : UILabel!
    
}
