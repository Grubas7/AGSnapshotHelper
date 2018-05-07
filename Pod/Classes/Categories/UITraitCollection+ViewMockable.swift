//
//  UITraitCollection+ViewMockable.swift
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 05/05/2018.
//  Copyright © 2018 Allegro Group. All rights reserved.
//

import Foundation
import UIKit

extension UITraitCollection {
    
    convenience init(mockParameters: ViewMockable) {
        var newTraitCollection: [UITraitCollection] = [
            UITraitCollection(verticalSizeClass: mockParameters.verticalSizeClass),
            UITraitCollection(horizontalSizeClass: mockParameters.horizontalSizeClass)
        ]
        
        if #available(iOS 10.0, *) {
            newTraitCollection.append(UITraitCollection(layoutDirection: mockParameters.layoutDirection))
            
            if let mockedPreferredContentSizeCategory = mockParameters.preferredContentSizeCategory {
                newTraitCollection.append(UITraitCollection(preferredContentSizeCategory: mockedPreferredContentSizeCategory))
            }
        }
        
        self.init(traitsFrom: newTraitCollection)
    }
}
