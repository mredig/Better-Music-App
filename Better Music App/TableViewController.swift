//
//  TableViewController.swift
//  Better Music App
//
//  Created by Michael Redig on 4/2/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
	
	// collection that conforms to a single protocol for

    override func viewDidLoad() {
        super.viewDidLoad()
		
		switch title {
		case "Genre":
			print("Selected Genre")
			// load the collection according to selected variation
		case "Playlists":
			print("Selected \(title)")
		case "Songs":
			print("Selected \(title)")
		case "Artists":
			print("Selected \(title)")
		case "Albums":
			print("Selected \(title)")
		default:
			print("Selected Something Else")
		}

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
		//use collection protocol to set this up
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		//use collection protocol to set this up
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
