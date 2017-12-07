//
//  UIApplication+PreferredContentSizeCategoryMock.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/08/2017.
//  Copyright © 2017 Grupa Allegro. All rights reserved.
//

@import UIKit;

/**
 `UIApplication` extension for `-preferredContentSizeCategory` property mocking.
 */
@interface UIApplication (PreferredContentSizeCategoryMock)

- (void)startMockingPreferredContentSizeCategory:(nonnull UIContentSizeCategory)contentSizeCategory;

- (void)stopMockingPreferredContentSizeCategory;

@end
