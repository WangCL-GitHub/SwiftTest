//
//  WeiBoNewsViewController.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit

class WeiBoNewsViewController: WeiBoBaseViewController {

    var mArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0...10 {
            let model = WeiBoNewsModel()
            model.name = String(i)
            model.isVip = 1 == i%2 ? true:false
            model.date = "2022-8-8"
            model.content = "凡十年，习近平总书记踏遍千山万水，心系千家万户。人民群众对美好生活的向往，总书记念兹在兹；人民群众的所忧所盼，总书记念之行之。"
            
            let status = WeiBoNewsStatusModel()
            status.reposts_count = 123
            status.comments_count = 123
            status.attitudes_count = 123
            status.is_attitudes = 1 == i%2 ? true:false
            status.getToolCountString()
            model.news_status = status
            
            model.getRowHeight()
            mArray.add(model)
        }
        
        tableView?.reloadData()
    }

    @objc func showFridends() {
        print("showFridends")
    }
    
}

extension WeiBoNewsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "WeiBoNewsCell"
        var cell:WeiBoNewsCell? = tableView.dequeueReusableCell(withIdentifier: cellID) as? WeiBoNewsCell
        if nil == cell {
            cell = WeiBoNewsCell(style:.default, reuseIdentifier: cellID)
        }
        
        cell?.selectionStyle = .none
        cell?.viewModel = mArray.object(at: indexPath.row) as? WeiBoNewsModel
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (mArray.object(at: indexPath.row) as? WeiBoNewsModel)!.rowHeight
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = WeiBoNewsDetailsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension WeiBoNewsViewController {
    override func setupTableView() {
        super.setupTableView()
        
        tableView?.rowHeight = UITableView.automaticDimension
        tableView?.estimatedRowHeight = 250
        tableView?.separatorStyle = .none
        
        naviItem.leftBarButtonItem = UIBarButtonItem(title: "好友", fontSize: 16, target: self, action: #selector(showFridends))
    }
    
    
}
