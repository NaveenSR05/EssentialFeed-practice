//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Test 2 on 11/02/22.
//

import XCTest

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class CacheFeedUseCaseTests: XCTestCase {

    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }

}
