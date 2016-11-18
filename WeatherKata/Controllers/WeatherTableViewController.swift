//
//  WeatherTableViewController.swift
//  WeatherKata
//
//  Created by Ana Nogal on 15/11/2016.
//  Copyright © 2016 Ana Nogal. All rights reserved.
//

import UIKit

struct TableViewStyle {
    static let headerCellHeight: CGFloat = 50.0
}

struct TitleStyle {
    static let text = "Weather App"
    static let fontSize: CGFloat = 20.0
    static let color = UIColor.white
}

class WeatherTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return TableViewStyle.headerCellHeight
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let titleLabel = UILabel(text: TitleStyle.text, color: TitleStyle.color, fontSize: TitleStyle.fontSize)
        let viewStyle = HeaderViewStyle(width: tableView.frame.width, height: TableViewStyle.headerCellHeight)
        
        return UIView(viewStyle: viewStyle, label: titleLabel)
    }
}
