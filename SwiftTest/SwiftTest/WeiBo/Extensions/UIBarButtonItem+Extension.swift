//
//  UIBarButtonItem+Extension.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit

extension UIBarButtonItem {
    convenience init(title: String, fontSize: CGFloat = 16, target: AnyObject?, action:Selector, isBackItem:Bool = false) {
        let btn:UIButton = UIButton.textButton(title:title,
                                                  fontSize:fontSize,
                                                  normalColor: UIColor.darkGray,
                                                  highlightedColor: UIColor.orange)

        if isBackItem{
            let imageName = "navigationbar_back_withtext"
            
            btn.setImage(UIImage(named: imageName), for: .normal)
            btn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
            btn.sizeToFit()
        }
        
        btn.addTarget(target, action: action, for: .touchUpInside)
        self.init(customView: btn)
    }
}

