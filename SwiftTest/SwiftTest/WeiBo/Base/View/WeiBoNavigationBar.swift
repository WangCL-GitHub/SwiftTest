//
//  WeiBoNavigationBar.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit

class WeiBoNavigationBar: UINavigationBar {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        for subView in self.subviews {
            let stringFromClass = NSStringFromClass(subView.classForCoder)
            if stringFromClass.contains("BarBackground") {
                subView.frame = self.bounds
            } else if stringFromClass.contains("UINavigationBarContentView") {
                subView.frame = CGRect(x: 0, y: StatusBarHeight, width: UIScreen.screenW, height: NaviContentHeight)
            }
        }
    }

}
