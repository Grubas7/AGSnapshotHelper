//
//  NotificationCenter+CustomPosts.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 10/06/2017.
//  Copyright © 2017 Allegro Group. All rights reserved.
//

import Foundation
import UIKit

public extension NotificationCenter {

    public func postContentSizeCategoryChangeNotification(_ contentSizeCategory: UIContentSizeCategory) {
        let contentSizeCategoryNotification = notification(for: contentSizeCategory)
        post(contentSizeCategoryNotification)
    }

    private func notification(for contentSizeCategory: UIContentSizeCategory) -> Notification {
        let userInfo = [
            UIContentSizeCategoryNewValueKey: contentSizeCategory
        ]
        return Notification(name: .UIContentSizeCategoryDidChange, object: self, userInfo: userInfo)
    }
}
