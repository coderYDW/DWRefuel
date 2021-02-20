//
//  ViewController.swift
//  Refuel
//
//  Created by Yangdongwu on 2020/11/14.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    lazy var tableView: UITableView = {
        let t = UITableView()
        return t
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = UILabel()
        label.text = "Hello World"
        view.addSubview(label)
        label.frame = CGRect(x: 100, y: 200, width: 300, height: 40)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
//        tableView.frame = view.bounds
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }

    
    // MARK: - tableView dataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = "第\(indexPath.section)组"
        cell?.detailTextLabel?.text = "第\(indexPath.row)行"
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    
}

