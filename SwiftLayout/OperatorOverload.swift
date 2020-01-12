//
//  OperatorOverload.swift
//  SwiftLayout
//
//  Created by Nick Rudden on 12/1/19.
//  Copyright © 2019 Nick Rudden. All rights reserved.
//

import UIKit

// Allow a LayoutAnchor and a constant to be represented as a single unit (tuple) so we can use with equality operators
public func +<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

public func -<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, -rhs)
}

// Equality overloads
@discardableResult
public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) -> NSLayoutConstraint {
    return lhs.equal(to: rhs)
}

@discardableResult
public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) -> NSLayoutConstraint {
    return lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

@discardableResult
public func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) -> NSLayoutConstraint {
    return lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@discardableResult
public func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) -> NSLayoutConstraint {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) -> NSLayoutConstraint {
    return lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@discardableResult
public func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) -> NSLayoutConstraint {
    return lhs.lessThanOrEqual(to: rhs)
}
