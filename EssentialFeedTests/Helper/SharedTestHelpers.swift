//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Test 2 on 28/03/22.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "Any error", code: 1)
}
