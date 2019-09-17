//
//  ViewController.swift
//  Example
//
//  Created by Assin on 2019. 9. 17..
//  Copyright © 2019 Assin. All rights reserved.
//

import UIKit
import EasingFunction
//struct EasingFunction {
//    let cubic: UITimingCurveProvider
//    let label: String
//}

class ViewController: UIViewController, StoryboardInitializable {

    @IBOutlet weak var tableView: UITableView!
    var easingItems: [EasingFunction] = EasingFunction.allCases

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(startAnimation)))
        self.tableView.register(EasingCell.nib, forCellReuseIdentifier: EasingCell.swiftIdentifier)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.separatorStyle = .none
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }

    @objc
    func startAnimation() {
        for (i, item) in self.easingItems.enumerated() {
            let ip = IndexPath(row: i, section: 0)
            if let cell = self.tableView.cellForRow(at: ip) as? EasingCell {
                cell.go(item)
            }
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return easingItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: EasingCell.swiftIdentifier, for: indexPath) as? EasingCell else { return UITableViewCell() }

        let item = easingItems[indexPath.row]
        cell.configCell(item)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

