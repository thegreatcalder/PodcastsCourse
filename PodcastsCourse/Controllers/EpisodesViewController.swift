//
//  EpisodesViewController.swift
//  PodcastsCourse
//
//  Created by Steven Calder on 9/18/18.
//  Copyright © 2018 Steven Calder. All rights reserved.
//

import UIKit

class EpisodesViewController: UITableViewController {
    var episodes = [Episode]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let episodeOne = Episode(title: "Test Episode")
        episodes.append(episodeOne)
        
        let cellID = "cellID"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.dequeueReusableCell(withIdentifier: cellID)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let episode = episodes[indexPath.row]
        cell.textLabel?.text = episode.title
        return cell
    }
    
    var podcast: Podcast? {
        didSet {
            self.navigationItem.title = podcast?.trackName
        }
    }
}
