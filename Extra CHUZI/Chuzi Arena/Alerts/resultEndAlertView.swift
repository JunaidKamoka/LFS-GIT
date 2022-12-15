//
//  challengeInviteAlertView.swift
//  Extra CHUZI
//
//  Created by Junaid  Kamoka on 11/04/2022.
//

import Foundation
import UIKit
import RxSwift

class resultEndAlertView : UIView{
    
    class func instantiateFromNib() -> resultEndAlertView{
        return Bundle.main.loadNibNamed("resultEndAlertView", owner: nil, options: nil)!.first as! resultEndAlertView
    }
    
    func setup(closeIt: @escaping VoidCompletionBlock)
    {
        
        self.btnBrandGoalOutlet.setTitleColor(.orange, for: .normal)
        self.btnVoteResultOutlet.setTitleColor(.gray, for: .normal)
        
        closeBtn.rx.tap.bind {
            closeIt()
        }.disposed(by: disposeBag)
    }
    
    @IBOutlet weak var closeBtn : UIButton!
    @IBOutlet weak var bottomViewBrandGoal : UIView!
    @IBOutlet weak var bottomViewVoteResult : UIView!
    
    @IBOutlet weak var btnBrandGoalOutlet : UIButton!
    @IBOutlet weak var btnVoteResultOutlet : UIButton!
    
    @IBOutlet weak var voteResultView : UIView!
    var selected = 1
    
    @IBAction func btnBrandGoal(_ sender: UIButton){
        
        guard selected != 1 else{return}
        self.selected = 1
        
        sender.setTitleColor(.orange, for: .normal)
        self.bottomViewBrandGoal.backgroundColor = .orange
        
        btnVoteResultOutlet.setTitleColor(.gray, for: .normal)
        self.bottomViewVoteResult.backgroundColor = .gray
        
        
        self.voteResultView.isHidden = true
    }
    
    @IBAction func btnVoteResult(_ sender: UIButton){
        
        guard selected != 2 else{return}
        self.selected = 2
        print("c1",sender.currentTitleColor)
        
        sender.setTitleColor(.orange, for: .normal)
        print("c2",sender.currentTitleColor)
//        self.bottomViewVoteResult.backgroundColor = .orange
//
//        btnBrandGoalOutlet.setTitleColor(.gray, for: .normal)
//        self.bottomViewBrandGoal.backgroundColor = .gray
        self.voteResultView.isHidden = false
    }
    
    private let disposeBag: DisposeBag = .init()
}
