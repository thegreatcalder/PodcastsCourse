//
//  APIService.swift
//  PodcastsCourse
//
//  Created by Steven Calder on 9/15/18.
//  Copyright © 2018 Steven Calder. All rights reserved.
//

import Foundation
import Alamofire

class APIService {
    static let shared = APIService()
    
    func fetchPodcast(searchText: String, completionHandler: @escaping ([Podcast])->()) {
        
        let url = "https://itunes.apple.com/search"
        let parameters = ["term": searchText, "media": "podcast"]
        
        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).response { (dataResponse) in
            if let err = dataResponse.error {
                print("Failed to contact apple", err)
            }
            guard let data = dataResponse.data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResults.self, from: data)
                completionHandler(searchResult.results)
            } catch let decodeErr {
                print("There was an error decoding the JSON \(decodeErr)")
            }
        }
    }
    
    struct SearchResults: Decodable {
        let resultCount: Int
        let results: [Podcast]
    }
}

//
