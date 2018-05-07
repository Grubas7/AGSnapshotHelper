//
//  MockingView.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 22/02/2018.
//  Copyright © 2018 Allegro Group. All rights reserved.
//

import Foundation
import UIKit

/// View stubbing layout defining properties.
/// Some of layout properties (e.g. `safeAreaInsets`, or `traitCollection`) are read-only,
/// so this view can be used as container which helps to force custom layout.
@objc(AGMockingView)
public class MockingView: UIView {
    
    // MARK: - Public methods

    /// Object storing properties to stub.
    public var mockParameters: ViewMockable? {
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
    public init(mockParameters: ViewMockable) {
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
        
        return UITraitCollection(traitsFrom: mockedTraitCollection)
    }
    
    // MARK: - Private methods
    
    private func setUpLayoutMargins() {

        if let mockedLayoutMargins = mockParameters?.layoutMargins {
            layoutMargins = mockedLayoutMargins
        }

        if #available(iOS 11.0, *) {
            if let mockedDirectionalLayoutMargins = mockParameters?.directionalLayoutMargins {
                directionalLayoutMargins = mockedDirectionalLayoutMargins
            }
        }
    }
}
