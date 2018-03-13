//
//  MockingDeviceView.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 10/03/2018.
//  Copyright © 2018 Allegro Group. All rights reserved.
//

import Foundation
import UIKit

public typealias DeviceViewMockable = ViewMockable & DeviceMockable

/// View stubing layout defining properties and information about device.
/// Some of layout properties (e.g. `safeAreaInsets`, or `traitCollection`) are read-only,
/// so this view can be used as container which helps to force custom layout.
/// Additionally `mockParameters` contains information about mocked device,
/// which can be use to distinguish interface orientation or device model.
@objc(AGMockingDeviceView)
public class MockingDeviceView: UIView {
    
    // MARK: - Public methods
    
    /// Object storing properties to stub.
    public var mockParameters: DeviceViewMockable? {
        didSet {
            guard let mockParameters = mockParameters  else {
                return
            }
            
            frame.size = mockParameters.size
            setUpLayoutMargins()
        }
    }
    
    /// Initializes and returns a newly allocated view object with rectangle frame equal to 0,0 origin and `mockParameters.size` size.
    ///
    /// - Parameter mockParameters: Object with properties to stub.
    public init(mockParameters: DeviceViewMockable) {
        let newFrame = CGRect(origin: .zero, size: mockParameters.size)
        super.init(frame: newFrame)
    }
    
    // MARK: - Overriden methods
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpLayoutMargins()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setUpLayoutMargins()
    }
    
    @available(iOS 11.0, *)
    override public var safeAreaInsets: UIEdgeInsets {
        return mockParameters?.safeAreaInsets ?? super.safeAreaInsets
    }
    
    override public var traitCollection: UITraitCollection {
        var mockedTraitCollection: [UITraitCollection] = [super.traitCollection]
        
        if let mockedVerticalSizeClass = mockParameters?.verticalSizeClass {
            mockedTraitCollection.append(UITraitCollection(verticalSizeClass: mockedVerticalSizeClass))
        }
        if let mockedHorizontalSizeClass = mockParameters?.horizontalSizeClass {
            mockedTraitCollection.append(UITraitCollection(horizontalSizeClass: mockedHorizontalSizeClass))
        }
        if #available(iOS 10.0, *) {
            if let mockedPreferredContentSizeCategory = mockParameters?.preferredContentSizeCategory {
                mockedTraitCollection.append(UITraitCollection(preferredContentSizeCategory: mockedPreferredContentSizeCategory))
            }
            
            if let mockedLayoutDirection = mockParameters?.layoutDirection {
                mockedTraitCollection.append(UITraitCollection(layoutDirection: mockedLayoutDirection))
            }
        }
        if let userInterfaceIdiom = mockParameters?.userInterfaceIdiom {
            mockedTraitCollection.append(UITraitCollection(userInterfaceIdiom: userInterfaceIdiom))
        }
        
        return UITraitCollection(traitsFrom: mockedTraitCollection)
    }
    
    // MARK: - Private methods
    
    private func setUpLayoutMargins() {
        
        if #available(iOS 11.0, *) {
            if let mockedDirectionalLayoutMargins = mockParameters?.directionalLayoutMargins {
                directionalLayoutMargins = mockedDirectionalLayoutMargins
            }
        }
        
        if let mockedLayoutMargins = mockParameters?.layoutMargins {
            layoutMargins = mockedLayoutMargins
        }
    }
}
