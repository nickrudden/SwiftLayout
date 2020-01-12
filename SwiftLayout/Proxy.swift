//
//  Proxy.swift
//  SwiftLayout
//
//  Created by Nick Rudden on 1/12/20.
//  Copyright © 2020 Nick Rudden. All rights reserved.
//

import UIKit

public class Proxy {
    public lazy var leading = property(with: view.leadingAnchor)
    public lazy var trailing = property(with: view.trailingAnchor)
    public lazy var top = property(with: view.topAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var width = property(with: view.widthAnchor)
    public lazy var height = property(with: view.heightAnchor)
    
    // NEed to do center x/y and asigning constants to height and widht

    private let view: UIView

    internal init(view: UIView) {
        self.view = view
    }

    private func property<A: LayoutAnchor>(with anchor: A) -> LayoutProperty<A> {
        return LayoutProperty(anchor: anchor)
    }
}
