//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Test 2 on 11/05/22.
//

import UIKit

final class FeedRefreshViewContoller: NSObject, FeedLoadingView {
    private(set) lazy var view: UIRefreshControl = loadView()
    var loadFeed: () -> Void
    
    init(loadFeed: @escaping () -> Void) {
        self.loadFeed = loadFeed
    }
    
    @objc func refresh() {
        loadFeed()
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }
    
    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
