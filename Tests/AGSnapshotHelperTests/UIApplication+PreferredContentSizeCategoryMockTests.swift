//
//  UIApplication+PreferredContentSizeCategoryMockTests.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 29/11/2017.
//  Copyright © 2017 allegro. All rights reserved.
//

import XCTest

class UIApplication_PreferredContentSizeCategoryMockTests: XCTestCase {

    func testUIApplicationPreferredContentSizeCategory_ShouldBeEqualToMockedContentSizeCategory_WhenMockedContentSizeCategoryIsSet() {
        // Arrange
        let application = UIApplication.shared
        let contentSizeCategoryToMock = UIContentSizeCategory.extraSmall

        // Act
        application.mockedContentSizeCategory = contentSizeCategoryToMock

        // Assert
        XCTAssertEqual(application.preferredContentSizeCategory, contentSizeCategoryToMock)
    }


    func testUIApplicationPreferredContentSizeCategory_ShouldBeEqualToPreferredContentSizeCategory_WhenMockedContentSizeCategoryIsNil() {
        // Arrange
        let application = UIApplication.shared
        let orginalContentSizeCategory = application.preferredContentSizeCategory
        application.mockedContentSizeCategory = .accessibilityExtraExtraExtraLarge

        // Act
        application.mockedContentSizeCategory = nil

        // Assert
        XCTAssertEqual(application.preferredContentSizeCategory, orginalContentSizeCategory)
    }
}
