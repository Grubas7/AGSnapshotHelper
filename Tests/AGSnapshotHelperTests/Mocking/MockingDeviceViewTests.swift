//
//  MockingDeviceViewTests.swift
//  AGSnapshotHelperTests
//
//  Created by Adam Grzegorowski on 10/03/2018.
//  Copyright © 2018 Allegro Group. All rights reserved.
//

import AGSnapshotHelper
import XCTest

class MockingDeviceViewTests: XCTestCase {
    
    // MARK: - AGDeviceMockable
    
    func testMockingDeviceViewUserInterfaceIdiom_ShouldBeEqualToDeviceViewMockableUserInterfaceIdiom() {
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.userInterfaceIdiom = .phone
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = deviceViewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(userInterfaceIdiom: .phone)))
    }
    
    // MARK: - AGViewMockable
    
    func testMockingDeviceViewSize_ShouldBeEqualToViewMockableSize() {
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.size = CGSize(width: 20, height: 10)
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let size = deviceViewMock.frame.size
        
        // Assert
        XCTAssertEqual(size, CGSize(width: 20, height: 10))
    }
    
    func testMockingDeviceViewSafeAreaInsets_ShouldBeEqualToDeviceViewMockableSafeAreaInsets() {
        guard #available(iOS 11.0, *) else {
            return
        }
        
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.safeAreaInsets = UIEdgeInsets(top: 5.0, left: 10.0, bottom: 15.0, right: 20.0)
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let safeAreaInsets = deviceViewMock.safeAreaInsets
        
        // Assert
        XCTAssertEqual(safeAreaInsets, UIEdgeInsets(top: 5.0, left: 10.0, bottom: 15.0, right: 20.0))
    }
    
    func testMockingDeviceViewLayoutMargins_ShouldBeEqualToDeviceViewMockableLayoutMargins() {
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.layoutMargins = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let layoutMargins = deviceViewMock.layoutMargins
        
        // Assert
        XCTAssertEqual(layoutMargins, UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0))
    }
    
    func testMockingDeviceViewDirectionalLayoutMargins_ShouldBeEqualToDeviceViewMockableDirectionalLayoutMargins() {
        guard #available(iOS 11.0, *) else {
            return
        }
        
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 4.0, leading: 3.0, bottom: 2.0, trailing: 1.0)
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let directionalLayoutMargins = deviceViewMock.directionalLayoutMargins
        
        // Assert
        XCTAssertEqual(directionalLayoutMargins, NSDirectionalEdgeInsets(top: 4.0, leading: 3.0, bottom: 2.0, trailing: 1.0))
    }
    
    func testMockingDeviceViewTraitCollection_ShouldContainPreferredContentSizeCategoryEqualToMockParameters_WhenDeviceViewMockParametersSetsPreferredContentSizeCategory() {
        guard #available(iOS 10.0, *) else {
            return
        }
        
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.preferredContentSizeCategory = .accessibilityExtraLarge
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = deviceViewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(preferredContentSizeCategory: .accessibilityExtraLarge)))
    }
    
    func testMockingDeviceViewTraitCollection_ShouldContainHorizontalSizeClassEqualToMockParameters_WhenDeviceViewMockParametersSetsHorizontalSizeClass() {
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.horizontalSizeClass = .compact
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = deviceViewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(horizontalSizeClass: .compact)))
    }
    
    func testMockingDeviceViewTraitCollection_ShouldContainVerticalSizeClassEqualToMockParameters_WhenDeviceViewMockParametersSetsVerticalSizeClass() {
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.verticalSizeClass = .regular
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = deviceViewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(verticalSizeClass: .regular)))
    }
    
    func testMockingDeviceViewTraitCollection_ShouldContainLayoutDirectionEqualToMockParameters_WhenDeviceViewMockParametersSetsLayoutDirection() {
        guard #available(iOS 10.0, *) else {
            return
        }
        
        // Arrange
        let mockParameters = DeviceViewMockParameters()
        mockParameters.layoutDirection = .rightToLeft
        let deviceViewMock = MockingDeviceView()
        deviceViewMock.mockParameters = mockParameters
        
        // Act
        let traitCollection = deviceViewMock.traitCollection
        
        // Assert
        XCTAssertTrue(traitCollection.containsTraits(in: .init(layoutDirection: .rightToLeft)))
    }
}
