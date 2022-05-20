//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Test 2 on 20/05/22.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let idendifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: idendifier) as! T
    }
}
