//
//  Podcast.swift
//  PodcastsCourse
//
//  Created by Steven Calder on 8/18/18.
//  Copyright © 2018 Steven Calder. All rights reserved.
//

import Foundation

struct Podcast: Decodable {
    var trackName: String?
    var artistName: String?
    var artworkUrl60: String?
    var trackCount: Int?
    var feedUrl: String?
}
