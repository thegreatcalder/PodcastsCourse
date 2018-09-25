//
//  PodcastTableViewCell.swift
//  PodcastsCourse
//
//  Created by Steven Calder on 9/16/18.
//  Copyright © 2018 Steven Calder. All rights reserved.
//

import UIKit
import SDWebImage

class PodcastTableViewCell: UITableViewCell {
    
    @IBOutlet weak var podcastImageView: UIImageView!
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var episodeCount: UILabel!
    
    var podcast: Podcast! {
        didSet {
            trackName.text = podcast.trackName
            artistName.text = podcast.artistName
            episodeCount.text = "Episode: \(podcast.trackCount ?? 0)"
            
            guard let url = URL(string: podcast.artworkUrl60 ?? "") else { return }
            podcastImageView.sd_setImage(with: url, completed: nil)
        }
    }
}
