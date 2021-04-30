//
//  DetailViewController.swift
//  UIConteinerView
//
//  Created by Бейбарыс Шагай on 3/18/21.
//  Copyright © 2021 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    let imageNameArray = ["Alberto Ruiz - 7 Elements (Original Mix)",
                              "Dave Wincent - Red Eye (Original Mix)",
                              "E-Spectro - End Station (Original Mix)",
                              "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                              "Ilija Djokovic - Delusion (Original Mix)",
                              "John Baptiste - Mycelium (Original Mix)",
                              "Lane 8 - Fingerprint (Original Mix)",
                              "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                              "Metodi Hristov, Gallya - Badmash (Original Mix)",
                              "Veerus, Maxie Devine - Nightmare (Original Mix)"]
       
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let viewController = parent as? ViewController {
            let trackTitle = imageNameArray[indexPath.row]
            viewController.titleLabel.text = trackTitle
            viewController.imageCover.image = UIImage(named: trackTitle)
        }
    }
}
