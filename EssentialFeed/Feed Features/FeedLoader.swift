//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Test 2 on 28/12/21.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
