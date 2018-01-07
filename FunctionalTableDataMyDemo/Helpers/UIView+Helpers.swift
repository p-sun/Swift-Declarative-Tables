//
//  UIView+Extension.swift
//  SimpleTable
//
//  Created by TSD051 on 2017-11-28.
//  Copyright © 2017 Paige Sun. All rights reserved.
//

import UIKit

extension UIView {
    func pinToSuperView() {
        guard let superview = self.superview else {
            return
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor),
            self.bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor),
            self.leftAnchor.constraint(equalTo: superview.leftAnchor),
            self.rightAnchor.constraint(equalTo: superview.rightAnchor)
            ])
    }
}

extension NSLayoutDimension {
    func activateConstraint(equalToConstant: CGFloat, priority: Float) -> NSLayoutConstraint {
        let constraint = self.constraint(equalToConstant: equalToConstant)
        constraint.priority = UILayoutPriority(rawValue: priority)
        constraint.isActive = true
        return constraint
    }
}