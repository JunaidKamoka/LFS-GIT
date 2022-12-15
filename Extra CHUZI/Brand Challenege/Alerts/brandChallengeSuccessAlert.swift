//
//  challengeInviteAlertView.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 11/04/2022.
//

import Foundation
import UIKit

class brandChallengeSuccessAlert : UIView{
    
    class func instantiateFromNib() -> brandChallengeSuccessAlert{
        return Bundle.main.loadNibNamed("brandChallengeSuccessAlert", owner: nil, options: nil)!.first as! brandChallengeSuccessAlert
    }
    
}
