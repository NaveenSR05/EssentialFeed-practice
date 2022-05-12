//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Test 2 on 11/05/22.
//

import UIKit

final class FeedRefreshViewContoller: NSObject {
    private(set) lazy var view: UIRefreshControl = bind(UIRefreshControl())
    
    private let viewModel: FeedViewModel
    
    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
    
    @objc func refresh() {
        viewModel.loadFeed()
    }
    
    private func bind(_ view: UIRefreshControl) -> UIRefreshControl {
        viewModel.onChange = { [weak view] viewModel in
            if viewModel.isLoading {
                view?.beginRefreshing()
            } else {
                view?.endRefreshing()
            }
        }
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
