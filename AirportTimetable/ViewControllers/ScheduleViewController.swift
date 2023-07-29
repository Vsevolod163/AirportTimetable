//
//  DepartureViewController.swift
//  AirportTimetable
//
//  Created by Vsevolod Lashin on 29.07.2023.
//

import UIKit

final class ScheduleViewController: UIViewController {

    private lazy var scheduleTableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()
    
    private lazy var copyrightView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 10
        
        return view
    }()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.text = "First"
        label.textAlignment = .center
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var urlLabel: UILabel = {
        let label = UILabel()
        label.text = "Second"
        label.textAlignment = .center
        label.numberOfLines = 0
        
        return label
    }()
    
    var webURL: String!
    
    private let cellID = "flight"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews(scheduleTableView, copyrightView, infoLabel, urlLabel)
        setConstraints()
        scheduleTableView.dataSource = self
        scheduleTableView.register(FlightTableViewCell.self, forCellReuseIdentifier: cellID)
       
        print(webURL ?? "1")
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        copyrightView.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        urlLabel.translatesAutoresizingMaskIntoConstraints = false
        scheduleTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                copyrightView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
                copyrightView.heightAnchor.constraint(equalToConstant: 100),
                copyrightView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
                copyrightView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
                
                infoLabel.topAnchor.constraint(equalTo: copyrightView.topAnchor, constant: 8),
                infoLabel.leadingAnchor.constraint(equalTo: copyrightView.leadingAnchor, constant: 8),
                infoLabel.trailingAnchor.constraint(equalTo: copyrightView.trailingAnchor, constant: -8),
                
                urlLabel.bottomAnchor.constraint(equalTo: copyrightView.bottomAnchor, constant: -8),
                urlLabel.leadingAnchor.constraint(equalTo: copyrightView.leadingAnchor, constant: 8),
                urlLabel.trailingAnchor.constraint(equalTo: copyrightView.trailingAnchor, constant: -8),
                
                scheduleTableView.topAnchor.constraint(equalTo: view.topAnchor),
                scheduleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                scheduleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scheduleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ]
        )
    }
}

// MARK: - UITableViewDataSource
extension ScheduleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scheduleTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        guard let cell = cell as? FlightTableViewCell else { return UITableViewCell() }
        
        cell.selectionStyle = .none
        cell.configure()
        
        return cell
    }
    
    
}
