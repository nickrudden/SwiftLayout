//
//  UIView+Extension.swift
//  SwiftLayout
//
//  Created by Nick Rudden on 1/12/20.
//  Copyright © 2020 Nick Rudden. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func layout(with closure: (Proxy) -> Void) -> Proxy {
        let proxy = Proxy(view: self)
        translatesAutoresizingMaskIntoConstraints = false
        closure(proxy)
        return proxy
    }
    
    @discardableResult
    func layout(_ parentView: UIView, with closure: (Proxy) -> Void) -> Proxy {
        parentView.addSubview(self)
        return layout(with: closure)
    }
}
