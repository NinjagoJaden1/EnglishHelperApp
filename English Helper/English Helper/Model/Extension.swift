//
//  File.swift
//  English Helper
//
//  Created by 老房东 on 2022-01-20.
//

import Foundation
import SwiftUI

// 定义向右划动回退
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

extension Text{
    func liacTitle() -> some View{
        self.lineLimit(1)
            .font(.title)
//            .fontWeight(.heavy)
            .minimumScaleFactor(0.01)
            .foregroundColor(Color("AccentColor"))
    }
}
