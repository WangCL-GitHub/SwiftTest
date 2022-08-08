//
//  WeiBoBaseViewController.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit

class WeiBoBaseViewController: UIViewController {

    lazy var navigationBar = WeiBoNavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.screenW, height: NaviContentHeight))
    
    lazy var naviItem = UINavigationItem()
    
    var tableView : UITableView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        setupUI()
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    override var title: String? {
        didSet {
            naviItem.title = title
        }
    }
    
    
}

extension WeiBoBaseViewController {
    func setupUI() {
        setupNavigationBar()
        setupTableView()
    }
    
    @objc func setupTableView() {
        tableView = UITableView(frame: view.bounds)
        view.insertSubview(tableView!, belowSubview: navigationBar)
        
        tableView?.delegate = self
        tableView?.dataSource = self
        
        //手动设置内容缩进
        let toolHeight:CGFloat = NaviBarHeight
        let tabBarHeight:CGFloat = BottomTabBarHeight
        tableView?.contentInset = UIEdgeInsets(top: toolHeight, left: 0, bottom: tabBarHeight, right: 0)
        tableView?.scrollIndicatorInsets = tableView!.contentInset
        
        //取消自动缩进
        if #available(iOS 11.0, *) {
            tableView?.contentInsetAdjustmentBehavior = .never
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    private func setupNavigationBar() {
        view.addSubview(navigationBar)
        
        navigationBar.items = [naviItem]
       
        //navigationBar background color
        navigationBar.barTintColor = UIColor.init(rgb: 0xF6F6F6)
        //set title color
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.darkGray
        ]
        //set system item title color
        navigationBar.backgroundColor = UIColor.init(rgb: 0xF6F6F6)
    }
    
}

extension WeiBoBaseViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
