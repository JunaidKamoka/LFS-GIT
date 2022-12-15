//
//  challengeInviteAlertView.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 11/04/2022.
//

import Foundation
import UIKit

class introBrandChallengeAlert : UIView{
    
    class func instantiateFromNib() -> introBrandChallengeAlert{
        return Bundle.main.loadNibNamed("introBrandChallengeAlert", owner: nil, options: nil)!.first as! introBrandChallengeAlert
    }
    
    func setup(isReachTheTop:Bool){
        //using 3 alerts in single view this is for if is ""reach the top and earn reward" alert
        if isReachTheTop{
            self.lblTitle.text = "Reach the top and earn rewards!"
            self.lblDesc.text = "This feature is avalable only for top stars and starmaker. Be one of the top start earning rewards through brand challenges! Look for Gold stars and label to identify brand challenges."
        }
    }
    
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblDesc : UILabel!
    
}
