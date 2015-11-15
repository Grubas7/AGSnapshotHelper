//
//  NSString+ContentSizeCategory.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import "NSString+ContentSizeCategory.h"

#import <UIKit/UIKit.h>

@implementation NSString (ContentSizeCategory)

- (BOOL)ag_isContentSizeCategory {

    // Array of all content size categories.
    // Regular content size categories:
    // https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/#//apple_ref/doc/constant_group/Content_Size_Category_Constants
    // Content size categories for accessibility:
    // https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/#//apple_ref/doc/constant_group/Accessibility_Content_Size_Category_Constants

    NSArray *contentSizeCategories = @[
        UIContentSizeCategoryExtraSmall,
        UIContentSizeCategorySmall,
        UIContentSizeCategoryMedium,
        UIContentSizeCategoryLarge,
        UIContentSizeCategoryExtraLarge,
        UIContentSizeCategoryExtraExtraLarge,
        UIContentSizeCategoryExtraExtraExtraLarge,
        UIContentSizeCategoryAccessibilityMedium,
        UIContentSizeCategoryAccessibilityLarge,
        UIContentSizeCategoryAccessibilityExtraLarge,
        UIContentSizeCategoryAccessibilityExtraExtraLarge,
        UIContentSizeCategoryAccessibilityExtraExtraExtraLarge
    ];

    return [contentSizeCategories containsObject:self];
    
}

@end
