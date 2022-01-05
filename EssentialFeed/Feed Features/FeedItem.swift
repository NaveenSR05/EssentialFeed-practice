//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Test 2 on 28/12/21.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
