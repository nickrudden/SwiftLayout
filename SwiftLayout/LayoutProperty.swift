//
//  LayoutProperty.swift
//  SwiftLayout
//
//  Created by Nick Rudden on 1/12/20.
//  Copyright © 2020 Nick Rudden. All rights reserved.
//

import UIKit

public struct LayoutProperty<Anchor: LayoutAnchor> {
    internal let anchor: Anchor
}

public extension LayoutProperty {
    @discardableResult
    func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint =  anchor.constraint(equalTo: otherAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    func greaterThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    func lessThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualTo: otherAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
}
