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


/**
 Sets `UIContentSizeCategory` value to mock.
 To disable mocking `-preferredContentSizeCategory`, set property to `nil`.
 */
@property (nonatomic, strong, nullable) UIContentSizeCategory mockedContentSizeCategory;

@end
