//
//  NSDirectionalEdgeInsets+Equatable.swift
//  AGSnapshotHelperTests
//
//  Created by Adam Grzegorowski on 06/03/2018.
//  Copyright © 2018 allegro. All rights reserved.
//

import Foundation

@available(iOS 11.0, *)
extension NSDirectionalEdgeInsets: Equatable {
    public static func ==(lhs: NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) -> Bool {
        return lhs.top == rhs.top && lhs.leading == rhs.leading && lhs.bottom == rhs.bottom && lhs.trailing == rhs.trailing
    }
}
