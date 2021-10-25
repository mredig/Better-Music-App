//
//  TableViewController.swift
//  Better Music App
//
//  Created by Michael Redig on 4/2/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit
import MediaPlayer

class TableViewController: UITableViewController {
	
	// collection that conforms to a single protocol for
	var list: MusicCategory?

    override func viewDidLoad() {
        super.viewDidLoad()
		
		checkAuth()
		

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
	
	func checkAuth() {
		MPMediaLibrary.requestAuthorization { (status) in
			if status == .authorized {
				self.populateList()
				DispatchQueue.main.sync {
					self.tableView.reloadData()
				}
			}
		}
	}
	
	func populateList() {
		switch title {
		case "Genre":
			print("Selected Genre")
			// load the collection according to selected variation
			list = GenreMusicCategory()
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
	}

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
		//use collection protocol to set this up
        return list?.sectionsArray.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		//use collection protocol to set this up
        return list?.sectionsArray[section].count ?? 0
    }

	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		var repItem = list?.sectionsArray[section].first?.representativeItem?.genre
		let firstLetter = String(repItem?.removeFirst() ?? "?")
		return firstLetter
	}
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCategoryCell", for: indexPath)

		let title = list?.sectionsArray[indexPath.section][indexPath.row].representativeItem?.genre ?? "a genre"
		
		cell.textLabel?.text = title
        // Configure the cell...

        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
