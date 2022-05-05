//
//  FeedViewController.swift
//  Prototype
//
//  Created by Test 2 on 05/05/22.
//

import UIKit

class FeedViewController: UITableViewController {
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "FeedImageCell")!
    }
    
}
