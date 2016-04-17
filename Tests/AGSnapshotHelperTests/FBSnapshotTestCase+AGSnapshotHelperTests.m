//
//  FBSnapshotTestCase+AGSnapshotHelperTests.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/01/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import <FBSnapshotTestCase/FBSnapshotTestController.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import <AGSnapshotHelper/FBSnapshotTestCase+AGSnapshotHelper.h>

#import "AGSampleView.h"

@interface FBSnapshotTestCase_AGSnapshotHelperTests : FBSnapshotTestCase
@end

@implementation FBSnapshotTestCase_AGSnapshotHelperTests

- (void)setUp {
    [super setUp];

    self.recordMode = NO;
}

- (void)testTestViewWithDisabledRecodedModeShouldCompareView {
    XCTAssertNoThrow([self testView:[self exampleView]]);
}

- (void)testTestViewWithDisabledRecodedModeAndContentSizeCategoryShouldCompareView {
    AGSampleView *view = [[AGSampleView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 568.0f)];
    XCTAssertNoThrow([self testView:view contentSizeCategory:UIContentSizeCategoryExtraSmall]);
}

- (void)testTestViewWithDisabledRecodedModeAndContentSizeCategoryAndWindowBoundsSizesMaskShouldCompareView {
    AGSampleView *view = [[AGSampleView alloc] initWithFrame:CGRectZero];
    XCTAssertNoThrow([self testView:view contentSizeCategory:UIContentSizeCategoryExtraSmall windowsBoundsSizesMask:AGWindowBoundsSizesiPad]);
}

#pragma mark - Helper methods

- (UIView *)exampleView {
    CGRect AGViewFrame = (CGRect){{0.0f, 0.0f}, {50.0f, 50.0f}};

    UIView *exampleView = [[UIView alloc] initWithFrame:AGViewFrame];
    exampleView.backgroundColor = [UIColor redColor];

    return exampleView;
}

@end
