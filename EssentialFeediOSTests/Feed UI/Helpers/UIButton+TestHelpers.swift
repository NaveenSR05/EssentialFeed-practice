//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Test 2 on 11/05/22.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
