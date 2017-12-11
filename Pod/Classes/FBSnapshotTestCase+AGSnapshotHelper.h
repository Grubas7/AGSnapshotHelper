//
//  AGSnapshotController.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 Allegro Group. All rights reserved.
//

#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

#import "AGWindowsBoundsSizesMask.h"

@interface FBSnapshotTestCase (AGSnapshotHelper)

/**
 Records snapshot of given view or compares reference image to given view.
 @param view: The view to snapshot
 */
- (void)testView:(nonnull UIView *)view;

/**
 Records snapshot of given view or compares reference image to given view.
 If `contentSizeCategory` is valid, test will simulate given content size category, otherwise test fails.
 @param view: The view to snapshot
 @param contentSizeCategory: Constants that indicate the preferred font sizes
 
 @see https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/#//apple_ref/doc/constant_group/Content_Size_Category_Constants
 @see https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/#//apple_ref/doc/constant_group/Accessibility_Content_Size_Category_Constants
 */
- (void)testView:(nonnull UIView *)view contentSizeCategory:(nonnull UIContentSizeCategory)contentSizeCategory;

/**
 Records snapshot of given view or compares reference image to given view.
 If `contentSizeCategory` is valid, test will simulate given content size category, otherwise test fails.
 If `mask` is valid, test will record or compare view with overriden sizes.
 @param view: The view to snapshot
 @param contentSizeCategory: Constants that indicate the preferred font sizes
 @param mask: Mask with sizes overriding view size
 
 @see https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/#//apple_ref/doc/constant_group/Content_Size_Category_Constants
 @see https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/#//apple_ref/doc/constant_group/Accessibility_Content_Size_Category_Constants
 */
- (void)testView:(nonnull UIView *)view contentSizeCategory:(nonnull UIContentSizeCategory)contentSizeCategory windowsBoundsSizesMask:(AGWindowBoundsSizesMask)mask;

@end
