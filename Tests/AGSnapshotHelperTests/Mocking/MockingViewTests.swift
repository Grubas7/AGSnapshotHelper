//
//  MockingViewTests.swift
//  AGSnapshotHelperTests
//
//  Created by Adam Grzegorowski on 06/03/2018.
//  Copyright © 2018 Allegro Group. All rights reserved.
//

import AGSnapshotHelper
import XCTest

class MockingViewTests: XCTestCase {
    
    func testMockingViewSize_ShouldBeEqualToViewMockableSize() {
        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.size = CGSize(width: 20, height: 10)
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let size = viewMock.frame.size
        
        // Assert
        XCTAssertEqual(size, CGSize(width: 20, height: 10))
    }

    func testMockingViewSafeAreaInsets_ShouldBeEqualToViewMockableSafeAreaInsets() {
        guard #available(iOS 11.0, *) else {
            return
        }

        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.safeAreaInsets = UIEdgeInsets(top: 5.0, left: 10.0, bottom: 15.0, right: 20.0)
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let safeAreaInsets = viewMock.safeAreaInsets
        
        // Assert
        XCTAssertEqual(safeAreaInsets, UIEdgeInsets(top: 5.0, left: 10.0, bottom: 15.0, right: 20.0))
    }
    
    func testMockingViewLayoutMargins_ShouldBeEqualToViewMockableLayoutMargins() {
        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.layoutMargins = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let layoutMargins = viewMock.layoutMargins
        
        // Assert
        XCTAssertEqual(layoutMargins, UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0))
    }
    
    func testMockingViewDirectionalLayoutMargins_ShouldBeEqualToViewMockableDirectionalLayoutMargins() {
        guard #available(iOS 11.0, *) else {
            return
        }

        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 4.0, leading: 3.0, bottom: 2.0, trailing: 1.0)
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let directionalLayoutMargins = viewMock.directionalLayoutMargins
        
        // Assert
        XCTAssertEqual(directionalLayoutMargins, NSDirectionalEdgeInsets(top: 4.0, leading: 3.0, bottom: 2.0, trailing: 1.0))
    }
    
    func testMockingViewTraitCollection_ShouldContainPreferredContentSizeCategoryEqualToMockParameters_WhenViewMockParametersSetsPreferredContentSizeCategory() {
        guard #available(iOS 10.0, *) else {
            return
        }

        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.preferredContentSizeCategory = .accessibilityExtraLarge
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = viewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(preferredContentSizeCategory: .accessibilityExtraLarge)))
    }
    
    func testMockingViewTraitCollection_ShouldContainHorizontalSizeClassEqualToMockParameters_WhenViewMockParametersSetsHorizontalSizeClass() {
        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.horizontalSizeClass = .compact
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = viewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(horizontalSizeClass: .compact)))
    }
    
    func testMockingViewTraitCollection_ShouldContainVerticalSizeClassEqualToMockParameters_WhenViewMockParametersSetsVerticalSizeClass() {
        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.verticalSizeClass = .regular
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = viewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(verticalSizeClass: .regular)))
    }
    
    func testMockingViewTraitCollection_ShouldContainLayoutDirectionEqualToMockParameters_WhenViewMockParametersSetsLayoutDirection() {
        guard #available(iOS 10.0, *) else {
            return
        }

        // Arrange
        let mockParameters = ViewMockParameters()
        mockParameters.layoutDirection = .rightToLeft
        let viewMock = MockingView()
        viewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = viewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(layoutDirection: .rightToLeft)))
    }
}
