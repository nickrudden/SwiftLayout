//
//  LayoutProperty.swift
//  SwiftLayout
//
//  Created by Nick Rudden on 1/12/20.
//  Copyright © 2020 Nick Rudden. All rights reserved.
//

import UIKit

public class LayoutProperty<Anchor: LayoutAnchor> {
    internal let anchor: Anchor
    
    init(anchor: Anchor) {
        self.anchor = anchor
    }
}

public extension LayoutProperty {

    func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint =  anchor.constraint(equalTo: otherAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    func greaterThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }

    func lessThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualTo: otherAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
}


// Height and Width subclass. Constraint the generic anchor of the superclass to LayoutDimensionAnchor
public class LayoutDimensionProperty<Anchor: LayoutDimensionAnchor>: LayoutProperty<Anchor> {
  
}

public extension LayoutDimensionProperty {
    func equal(to constant: CGFloat) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func greaterThanOrEqualTo(to constant: CGFloat) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func lessThanOrEqualTo(to constant: CGFloat) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func equal(to otherAnchor: Anchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalTo: otherAnchor, multiplier: multiplier)
        constraint.isActive = true
        return constraint
    }
    
    func greaterThanOrEqualTo(to otherAnchor: Anchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: otherAnchor, multiplier: multiplier)
        constraint.isActive = true
        return constraint
    }
    
    func lessThanOrEqualTo(to otherAnchor: Anchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualTo: otherAnchor, multiplier: multiplier)
        constraint.isActive = true
        return constraint
    }
    
}
