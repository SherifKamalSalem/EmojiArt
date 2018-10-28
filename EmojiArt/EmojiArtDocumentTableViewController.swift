//
//  EmojiArtDocumentTableViewController.swift
//  EmojiArt
//
//  Created by Sherif Kamal on 10/27/18.
//  Copyright © 2018 Sherif Kamal. All rights reserved.
//

import UIKit

class EmojiArtDocumentTableViewController: UITableViewController {

    var emojiArtDocuments = ["One", "Two", "Three"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArtDocuments.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentCell", for: indexPath)

        cell.textLabel?.text = emojiArtDocuments[indexPath.row]
        
        return cell
    }
    
    @IBAction func newEmojiArt(_ sender: Any) {
        emojiArtDocuments += ["Untitled".madeUnique(withRespectTo: emojiArtDocuments)]
        tableView.reloadData()
    }
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        if splitViewController?.preferredDisplayMode != .primaryOverlay {
//            splitViewController?.preferredDisplayMode = .primaryOverlay
//
//        }
//    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emojiArtDocuments.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }
    
    
}
