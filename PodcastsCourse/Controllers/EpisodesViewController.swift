//
//  EpisodesViewController.swift
//  PodcastsCourse
//
//  Created by Steven Calder on 9/18/18.
//  Copyright © 2018 Steven Calder. All rights reserved.
//

import UIKit

class EpisodesViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var podcast: Podcast? {
        didSet {
            self.navigationItem.title = podcast?.trackName
        }
    }
}
