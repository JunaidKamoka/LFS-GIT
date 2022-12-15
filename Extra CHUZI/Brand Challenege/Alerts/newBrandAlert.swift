//
//  challengeInviteAlertView.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 11/04/2022.
//

import Foundation
import UIKit

class newBrandAlert : UIView{
    
    class func instantiateFromNib() -> newBrandAlert{
        return Bundle.main.loadNibNamed("newBrandAlert", owner: nil, options: nil)!.first as! newBrandAlert
    }
    
    
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblDesc : UILabel!
    
}
