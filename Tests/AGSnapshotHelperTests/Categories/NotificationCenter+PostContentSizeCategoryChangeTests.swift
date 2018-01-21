//
//  NotificationCenter+PostContentSizeCategoryChangeTests.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 21/01/2018.
//  Copyright © 2018 Grupa Allegro. All rights reserved.
//

import AGSnapshotHelper
import XCTest

class NotificationCenter_PostContentSizeCategoryChangeTests: XCTestCase {
    
    func testPostContentSizeCategoryChangeNotification_ShouldPostNotificationWithUserInfoContainingNewContentSizeCategory() {
        // Arrange
        var receivedContentSizeCategory: UIContentSizeCategory?
        _ = expectation(forNotification: Notification.Name.UIContentSizeCategoryDidChange.rawValue,
                        object: NotificationCenter.default) { notification -> Bool in
                            receivedContentSizeCategory = notification.userInfo?[UIContentSizeCategoryNewValueKey] as? UIContentSizeCategory
                            return true
        }

        // Act
        NotificationCenter.default.postContentSizeCategoryChangeNotification(.extraExtraExtraLarge)

        // Assert
        waitForExpectations(timeout: 10.0) { error in
            XCTAssertNil(error)
            XCTAssertEqual(receivedContentSizeCategory, .extraExtraExtraLarge)
        }
    }
}
