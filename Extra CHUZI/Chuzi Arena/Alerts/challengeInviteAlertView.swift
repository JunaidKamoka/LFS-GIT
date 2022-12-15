//
//  challengeInviteAlertView.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 11/04/2022.
//

import Foundation
import UIKit

class challengeInviteAlertView : UIView{
    
    class func instantiateFromNib() -> challengeInviteAlertView{
        return Bundle.main.loadNibNamed("challengeInviteAlertView", owner: nil, options: nil)!.first as! challengeInviteAlertView
    }
    
}
