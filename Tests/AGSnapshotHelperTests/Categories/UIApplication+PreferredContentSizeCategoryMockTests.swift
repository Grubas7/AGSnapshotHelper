//
//  UIApplication+PreferredContentSizeCategoryMockTests.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 29/11/2017.
//  Copyright © 2017 allegro. All rights reserved.
//

import XCTest
@testable import AGSnapshotHelper

class UIApplication_PreferredContentSizeCategoryMockTests: XCTestCase {

    func testUIApplicationPreferredContentSizeCategory_ShouldBeEqualToMockedContentSizeCategory_WhenMockingContentSizeCategory() {
        // Arrange
        let application = UIApplication.shared
        let contentSizeCategoryToMock = UIContentSizeCategory.extraSmall

        // Act
        application.startMockingPreferredContentSizeCategory(contentSizeCategoryToMock)

        // Assert
        XCTAssertEqual(application.preferredContentSizeCategory, contentSizeCategoryToMock)

        application.stopMockingPreferredContentSizeCategory()
    }


    func testUIApplicationPreferredContentSizeCategory_ShouldBeEqualToPreferredContentSizeCategory_WhenAfterStopMocking() {
        // Arrange
        let application = UIApplication.shared
        let orginalContentSizeCategory = application.preferredContentSizeCategory
        application.startMockingPreferredContentSizeCategory(.accessibilityExtraExtraExtraLarge)

        // Act
        application.stopMockingPreferredContentSizeCategory()

        // Assert
        XCTAssertEqual(application.preferredContentSizeCategory, orginalContentSizeCategory)
    }
}
