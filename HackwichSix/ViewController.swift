//
//  ViewController.swift
//  HackwichSix
//
//  Created by CM Student on 3/5/20.
//  Copyright © 2020 Jkresnak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var MyFriends = ["Brandon", "Faith", "Kayln"]
    var MyFriendsHome = ["Mililani", "Kunia", "Mililani"]
    var Places = ["Sodor", "Japan", "Maui"]
    
    @IBOutlet var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = MyFriends[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = MyFriendsHome[indexPath.row]

        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1; return MyFriends.count
        
    }
    
}


