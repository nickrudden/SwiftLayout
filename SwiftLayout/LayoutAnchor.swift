//
//  LayoutAnchor.swift
//  SwiftLayout
//
//  Created by Nick Rudden on 1/12/20.
//  Copyright © 2020 Nick Rudden. All rights reserved.
//

import UIKit

// Base protocol to wrap NSLayoutAnchor
public protocol LayoutAnchor {
    func constraint(equalTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(greaterThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(lessThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutAnchor: LayoutAnchor {}


// Height and Width anchor
public protocol LayoutDimensionAnchor: LayoutAnchor {
    // These methods return an inactive constraint of the form thisVariable = constant.
    func constraint(equalToConstant c: CGFloat) -> NSLayoutConstraint

    func constraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint

    func constraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint

    
    // These methods return an inactive constraint of the form thisAnchor = otherAnchor * multiplier.
    func constraint(equalTo anchor: Self, multiplier m: CGFloat) -> NSLayoutConstraint

    func constraint(greaterThanOrEqualTo anchor: Self, multiplier m: CGFloat) -> NSLayoutConstraint

    func constraint(lessThanOrEqualTo anchor: Self, multiplier m: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutDimension: LayoutDimensionAnchor { }




