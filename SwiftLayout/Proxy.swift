//
//  Proxy.swift
//  SwiftLayout
//
//  Created by Nick Rudden on 1/12/20.
//  Copyright © 2020 Nick Rudden. All rights reserved.
//

import UIKit

public class Proxy {
    public lazy var left = property(with: view.leftAnchor)
    public lazy var right = property(with: view.rightAnchor)
    public lazy var top = property(with: view.topAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var centerX = property(with: view.centerXAnchor)
    public lazy var centerY = property(with: view.centerYAnchor)
    public lazy var width = dimensionProperty(with: view.widthAnchor)
    public lazy var height = dimensionProperty(with: view.heightAnchor)
    
    private let view: UIView

    internal init(view: UIView) {
        self.view = view
    }

    private func property<Anchor: LayoutAnchor>(with anchor: Anchor) -> LayoutProperty<Anchor> {
        return LayoutProperty(anchor: anchor)
    }
    
    private func dimensionProperty<Anchor: LayoutDimensionAnchor>(with anchor: Anchor) -> LayoutDimensionProperty<Anchor> {
        return LayoutDimensionProperty(anchor: anchor)
    }
}
