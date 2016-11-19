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
    static let footerCellHeight:CGFloat = 20.0
}

protocol LabelStyle {
    var text: String {get}
    var fontSize: CGFloat {get}
    var color: UIColor {get}
}

struct TitleStyle: LabelStyle {
    let text = "Weather App"
    let fontSize: CGFloat = 20.0
    let color = UIColor.white
}
struct LinkStyle: LabelStyle {
    let text = "Powered by Dark Sky"
    let fontSize: CGFloat = 10.0
    let color = UIColor.blue
    static let footerUrl = "https://darksky.net/poweredby/"
}

class WeatherTableViewController: UITableViewController {
    
    var weatherEventHandler : WeatherEventHandlerType?
    var tableViewWidth: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewWidth = tableView.frame.width
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
        let titleLabel = UILabel(labelStyle: TitleStyle())
        let headerStyle = ViewSize(width: tableViewWidth, height: TableViewStyle.headerCellHeight)
        
        return UIView(viewSize: headerStyle, label: titleLabel, backgroundColor: ViewStyle.headerBkgColor)
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return TableViewStyle.footerCellHeight
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let linkLabel = UILabel(labelStyle: LinkStyle())
        addGestureRecognizerTo(label: linkLabel)
        
        let footerStyle = ViewSize(width: tableViewWidth, height: TableViewStyle.footerCellHeight)
        
        return UIView(viewSize: footerStyle, label: linkLabel, backgroundColor: ViewStyle.footerBkgColor)
    }
    
    func addGestureRecognizerTo(label: UILabel) {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(WeatherTableViewController.openUrl))
        tapGesture.delegate = self
        
        label.addGestureRecognizer(tapGesture)
        label.isUserInteractionEnabled = true
    }
}

extension WeatherTableViewController : UIGestureRecognizerDelegate {
    func openUrl(){
        if let url = URL(string: LinkStyle.footerUrl) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

extension WeatherTableViewController: WeatherViewType {
    func setEventHandler(eventHandler: WeatherEventHandlerType) {
        self.weatherEventHandler = eventHandler
    }
}
