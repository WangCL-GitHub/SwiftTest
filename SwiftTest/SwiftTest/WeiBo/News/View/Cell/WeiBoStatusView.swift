//
//  WeiBoStatusView.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit
import SnapKitExtend

class WeiBoStatusView: UIView {

    lazy var repostButton = UIButton()
    lazy var commentsButton = UIButton()
    lazy var likeButton = UIButton()
    
    var viewModel:WeiBoNewsStatusModel? {
        didSet {
            repostButton.setTitle(viewModel?.repostTitle, for: .normal)
            commentsButton.setTitle(viewModel?.commentTitle, for: .normal)
            likeButton.setTitle(viewModel?.likeTitle, for: .normal)
            let is_attitudes = viewModel?.is_attitudes ?? false
            if is_attitudes {
                self.likeButton.setTitleColor(UIColor.init(rgb: 0xfc6c00), for: .normal)
                self.likeButton.setImage(UIImage(named: "timeline_icon_like"), for: .normal)
            }else  {
                self.likeButton.setTitleColor(UIColor.darkGray, for: .normal)
                self.likeButton.setImage(UIImage(named: "timeline_icon_unlike"), for: .normal)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.repostButton.setTitleColor(UIColor.darkGray, for: .normal)
        self.commentsButton.setTitleColor(UIColor.darkGray, for: .normal)
        self.repostButton.titleLabel?.font = UIFont.systemFont(ofSize: WeiBoLayout.Layout(14))
        self.commentsButton.titleLabel?.font = UIFont.systemFont(ofSize: WeiBoLayout.Layout(14))
        self.likeButton.titleLabel?.font = UIFont.systemFont(ofSize: WeiBoLayout.Layout(14))
        self.repostButton.setImage(UIImage(named: "timeline_icon_retweet"), for: .normal)
        self.commentsButton.setImage(UIImage(named: "timeline_icon_comment"), for: .normal)
        
        
        
        
        self.addSubview(self.repostButton)
        self.addSubview(self.commentsButton)
        self.addSubview(self.likeButton)
       
        
        let arr = [self.repostButton,self.commentsButton,self.likeButton]
        arr.snp.distributeViewsAlong(axisType: .horizontal, fixedSpacing: 15, leadSpacing: StatusPictureOutterMargin, tailSpacing: StatusPictureOutterMargin)
        arr.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.height.equalTo(WeiBoLayout.Layout(35))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
