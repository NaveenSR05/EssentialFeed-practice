//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Test 2 on 11/05/22.
//

import Foundation
import EssentialFeed

public final class FeedUIComposer {
    public static func feedComposedWith(feedLoader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let refreshController = FeedRefreshViewContoller(feedLoader: feedLoader)
        let feedController = FeedViewController(feedRefreshController: refreshController)
        refreshController.onRefresh = { [weak feedController] feed in
            feedController?.tableModel = feed.map { model in
                FeedImageCellController(model: model, imageLoader: imageLoader)
            }
        }
        return feedController
    }
}
