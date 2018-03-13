//
//  ViewMockable.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 22/02/2018.
//  Copyright © 2018 Allegro Group. All rights reserved.
//

import Foundation
import UIKit

/// A set of properties that provide information about layout of view.
@objc(AGViewMockable)
public protocol ViewMockable {
    
    /// Size to stub
    var size: CGSize { get set }
    
    /// Safe area insets to stub.
    var safeAreaInsets: UIEdgeInsets { get set }
    
    /// Layout margins insets to stub.
    /// In iOS 11 and later use the `directionalLayoutMargins`.
    var layoutMargins: UIEdgeInsets { get set }
    
    /// Directional layout margins insets to stub.
    @available(iOS 11.0, *)
    var directionalLayoutMargins: NSDirectionalEdgeInsets { get set }
    
    /// Horizontal size class to stub. Part of trait collection.
    var horizontalSizeClass: UIUserInterfaceSizeClass { get set }
    
    /// Vertical size class to stub. Part of trait collection.
    var verticalSizeClass: UIUserInterfaceSizeClass { get set }
    
    /// Preferred content size category to stub. Part of trait collection.
    @available(iOS 10.0, *)
    var preferredContentSizeCategory: UIContentSizeCategory? { get set }
    
    /// Layout direction to stub. Part of trait collection.
    @available(iOS 10.0, *)
    var layoutDirection: UITraitEnvironmentLayoutDirection { get set }
}
