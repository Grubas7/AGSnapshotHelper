//
//  NSString+ContentSizeCategoryTests.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 22/11/15.
//  Copyright (c) 2015 allegro. All rights reserved.
//

#import "NSString+ContentSizeCategory.h"

#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>

@interface NSString_ContentSizeCategoryTests : XCTestCase

@end

@implementation NSString_ContentSizeCategoryTests

- (void)testCategoryShouldReturnYesForValidStringOfContentSizeCategory {

    // Arrange
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

    for (NSString *string in contentSizeCategories) {

        // Act
        BOOL isStringContentSizeCategory = [string ag_isContentSizeCategory];

        // Assert
        XCTAssertTrue(isStringContentSizeCategory);
    }
}

- (void)testCategoryShouldReturnNoForInvalidStringOfContentSizeCategory {

    // Arrange
    NSString *string = @"invalidString";

    // Act
    BOOL isStringContentSizeCategory = [string ag_isContentSizeCategory];

    // Assert
    XCTAssertFalse(isStringContentSizeCategory);
}

@end
