//
//  NibForName.swift
//  EasingFunction
//
//  Created by tskim on 19/08/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import Foundation
import UIKit
protocol NibForName: SwiftNameIdentifier {
    static var nib: UINib { get }
}
extension NibForName {
    static var nib: UINib {
        return UINib(nibName: swiftIdentifier, bundle: nil)
    }
}

protocol SwiftNameIdentifier {
    static var swiftIdentifier: String { get }
}
extension SwiftNameIdentifier {
    static var swiftIdentifier: String {
        return String(describing: Self.self)
    }
}
