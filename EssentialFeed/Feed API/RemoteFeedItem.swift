//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Test 2 on 26/02/22.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
