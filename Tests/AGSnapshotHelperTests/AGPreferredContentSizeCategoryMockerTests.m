//
//  AGPreferredContentSizeCategoryMockerTests.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 24/11/15.
//  Copyright (c) 2015 allegro. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>
#import <AGSnapshotHelper/AGPreferredContentSizeCategoryMocker.h>

@interface AGPreferredContentSizeCategoryMockerTests : XCTestCase

@end

@implementation AGPreferredContentSizeCategoryMockerTests

- (void)testPreferredContentSizeCategoryShouldBeEqualToSetValueAfterStartMocking {

    // Arrange
    NSString *expectedContentSizeCategory = [self contentSizeCategoryDifferentThanPreferred];
    AGPreferredContentSizeCategoryMocker *mocker = [[AGPreferredContentSizeCategoryMocker alloc] init];

    // Act
    [mocker startMockingPreferredContentSizeCategory:expectedContentSizeCategory];
    NSString *preferredContentSizeCategory = [UIApplication sharedApplication].preferredContentSizeCategory;

    // Assert
    XCTAssertEqualObjects(preferredContentSizeCategory, expectedContentSizeCategory);

    // Clean Up
    [mocker stopMockingPreferredContentSizeCategory];
}

- (void)testPreferredContentSizeCategoryShouldBeEqualToSystemPreferredContentSizeCategoryAfterStopMocking {

    // Arrange
    NSString *contentSizeCategoryBeforeMocking = [UIApplication sharedApplication].preferredContentSizeCategory;
    NSString *contentSizeCategoryToMock = [self contentSizeCategoryDifferentThanPreferred];

    AGPreferredContentSizeCategoryMocker *mocker = [[AGPreferredContentSizeCategoryMocker alloc] init];
    [mocker startMockingPreferredContentSizeCategory:contentSizeCategoryToMock];

    // Act
    [mocker stopMockingPreferredContentSizeCategory];
    NSString *contentSizeCategoryAfterMocking = [UIApplication sharedApplication].preferredContentSizeCategory;

    // Assert
    XCTAssertEqualObjects(contentSizeCategoryAfterMocking, contentSizeCategoryBeforeMocking);
    XCTAssertNotEqualObjects(contentSizeCategoryAfterMocking, contentSizeCategoryToMock);
}

#pragma mark - Helpers

- (NSString *)contentSizeCategoryDifferentThanPreferred {

    NSString *preferredContentSizeCategory = [UIApplication sharedApplication].preferredContentSizeCategory;
    NSString *contentSizeCategory = [preferredContentSizeCategory isEqualToString:UIContentSizeCategorySmall] ? UIContentSizeCategoryLarge
                                                                                                              : UIContentSizeCategorySmall;

    return contentSizeCategory;
}

@end
