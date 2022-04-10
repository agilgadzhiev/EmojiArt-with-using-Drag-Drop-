//
//  EmojiArtDocumentTableViewController.swift
//  EmojIArt
//
//  Created by Агил Гаджиев on 10.04.2022.
//

import UIKit

class EmojiArtDocumentTableViewController: UITableViewController {
    
    
    override func viewWillLayoutSubviews() {
        super .viewWillLayoutSubviews()
        if splitViewController?.preferredDisplayMode != .oneOverSecondary {
            splitViewController?.preferredDisplayMode = .oneOverSecondary
        }
    }

    var emojiArtDocuments = ["One", "Two", "Three"]
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojiArtDocuments.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "documentCell", for: indexPath)
        
        cell.textLabel?.text = emojiArtDocuments[indexPath.row]
        

        return cell
    }
    
    @IBAction func newEmojiArt(_ sender: UIBarButtonItem) {
        emojiArtDocuments += ["Untitled".madeUnique(withRespectTo: emojiArtDocuments)]
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emojiArtDocuments.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

}
