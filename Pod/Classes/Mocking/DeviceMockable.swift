//
//  DeviceMockable.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 06/03/2018.
//

import Foundation
import UIKit

/// A set of properties that provide information about device.
@objc(AGDeviceMockable)
public protocol DeviceMockable {
    
    /// Device name.
    var name: String { get set }
    
    /// Interface orientation to stub.
    var orientation: UIInterfaceOrientation { get set }
    
    /// User interface idiom to stub. Part of trait collection.
    var userInterfaceIdiom: UIUserInterfaceIdiom { get set }
}

