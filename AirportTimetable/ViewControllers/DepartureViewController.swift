//
//  DepartureViewController.swift
//  AirportTimetable
//
//  Created by Vsevolod Lashin on 29.07.2023.
//

import UIKit

final class DepartureViewController: UIViewController {

    private lazy var departureTableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Departure"
    }
}
