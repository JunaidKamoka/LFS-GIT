//
//  challengeInviteAlertView.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 11/04/2022.
//

import Foundation
import UIKit

class brandChallengeLiveAlertView : UIView{
    
    class func instantiateFromNib() -> brandChallengeLiveAlertView{
        return Bundle.main.loadNibNamed("brandChallengeLiveAlertView", owner: nil, options: nil)!.first as! brandChallengeLiveAlertView
    }
    
}
