//
//  NotificationCenter.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 15.08.2021.
//

import Foundation


// Create notification about update
static let watchListUpdated = Notification.Name("SearchControllerModel.watchlistUpdated")


// Post Notification in some place
var watchList = [Movie]() {
    didSet {
        NotificationCenter.default.post(name: SearchControllerModel.watchListUpdated, object: nil)
    }
}



// Observe changes and add observers and their actions
NotificationCenter.default.addObserver(tableView!, selector: #selector(UITableView.reloadData), name: SearchControllerModel.watchListUpdated, object: nil)
