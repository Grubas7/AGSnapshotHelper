//
//  AGSnapshotController.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 Allegro Group. All rights reserved.
//

#import "FBSnapshotTestCase+AGSnapshotHelper.h"
#import "AGPreferredContentSizeCategoryMocker.h"
#import "NSString+ContentSizeCategory.h"
#import "NSNotificationCenter+AGContentSizeCategory.h"

#import <FBSnapshotTestCase/FBSnapshotTestController.h>

@implementation FBSnapshotTestCase (AGSnapshotHelper)

- (void)testView:(nonnull UIView *)view {
    [self testView:view contentSizeCategory:nil identifier:nil];
}

- (void)testView:(nonnull UIView *)view contentSizeCategory:(nonnull NSString *)contentSizeCategory {
    [self testView:view contentSizeCategory:contentSizeCategory identifier:nil];
}

- (void)testView:(nonnull UIView *)view contentSizeCategory:(nonnull NSString *)contentSizeCategory windowsBoundsSizesMask:(AGWindowBoundsSizesMask)mask {

    NSArray<NSValue *> *sizes  = [AGWindowBoundsSizesMaskConverter windowBoundsSizesForMask:mask];
    if (sizes == nil) {

        [self testView:view contentSizeCategory:contentSizeCategory identifier:nil];
        return;
    }

    for (NSValue *sizeValue in sizes) {

        CGSize size = sizeValue.CGSizeValue;
        CGRect newFrame = view.frame;
        newFrame.size = size;
        view.frame = newFrame;
        [view layoutIfNeeded];

        NSString *identifier = [AGWindowBoundsSizesMaskConverter nameForSize:size];

        [self testView:view contentSizeCategory:contentSizeCategory identifier:identifier];
    }
}

- (void)testView:(nonnull UIView *)view contentSizeCategory:(nullable NSString *)contentSizeCategory identifier:(nullable NSString *)identifier {

    AGPreferredContentSizeCategoryMocker *mocker;
    if (contentSizeCategory != nil) {
        XCTAssertTrue([contentSizeCategory ag_isContentSizeCategory], @"%@ is not a content size category string.", contentSizeCategory);

        mocker = [[AGPreferredContentSizeCategoryMocker alloc] init];
        [mocker startMockingPreferredContentSizeCategory:contentSizeCategory];

        [[NSNotificationCenter defaultCenter] postNotificationChangeWithContentSizeCategory:contentSizeCategory];
    }

    NSMutableString *identifierString = [NSMutableString string];
    if (contentSizeCategory != nil && identifier != nil) {
        [identifierString appendFormat:@"%@_%@", contentSizeCategory, identifier];
    } else {
        if (contentSizeCategory != nil) {
            [identifierString appendFormat:@"%@", contentSizeCategory];
        }
        if (identifier != nil) {
            [identifierString appendFormat:@"%@", identifier];
        }
    }

    FBSnapshotVerifyView(view, identifierString);

    [mocker stopMockingPreferredContentSizeCategory];
}

@end
