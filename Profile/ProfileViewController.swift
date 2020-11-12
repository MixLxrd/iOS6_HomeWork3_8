//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Михаил Ильченко on 06.10.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.toAutoLayout()
        return tableView
    }()
    
    let profileHeaderView = ProfileTableHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .lightGray
        //setupLayout()
        
        setupTableView()
        
    }
    
    
    private func setupTableView() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {

        
        profileHeaderView.toAutoLayout()
        view.addSubview(profileHeaderView)
        
        let constraints = [
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
             
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }

}
