//
//  WeiBoCommon.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import Foundation
import UIKit

// iPhone X
let IPhoneX = (UIScreen.screenW >= 375 && UIScreen.screenH >= 812)

// Status bar height.
let StatusBarHeight:CGFloat = IPhoneX ? 44 : 20
// Navigation bar height.
let NaviContentHeight:CGFloat = 44

// Status bar & navigation bar height.
var NaviBarHeight:CGFloat = StatusBarHeight + NaviContentHeight


let BottomTabBarContentHeigth:CGFloat = 49
let BottomTabBarSpeacing:CGFloat = IPhoneX ? 34 : 0
// Tabbar height.
let BottomTabBarHeight:CGFloat  =  IPhoneX ? (BottomTabBarContentHeigth + BottomTabBarSpeacing) : BottomTabBarContentHeigth

//MARK: - 微博配图视图常亮
let DefaultMargin = WeiBoLayout.Layout(12)
//外部间距
let StatusPictureOutterMargin = WeiBoLayout.Layout(12)
//内部间距
let StatusPictureInnerMargin = WeiBoLayout.Layout(5)


