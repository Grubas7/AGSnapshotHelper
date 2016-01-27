//
//  FBSnapshotTestCase+AGSnapshotHelperTests.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/01/16.
//  Copyright © 2016 allegro. All rights reserved.
//

#import <FBSnapshotTestCase/FBSnapshotTestController.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import <AGSnapshotHelper/FBSnapshotTestCase+AGSnapshotHelper.h>

static CGRect AGViewFrame = (CGRect){{0.0f, 0.0f}, {50.0f, 50.0f}};

@interface FBSnapshotTestCase_AGSnapshotHelperTests : FBSnapshotTestCase
@end

@implementation FBSnapshotTestCase_AGSnapshotHelperTests

- (void)setUp {
    [super setUp];

    self.recordMode = NO;
}

- (void)testTestViewWithDisabledRecodedModeShouldCompareView {
    XCTAssertNoThrow([self testView:[self exampleView] contentSizeCategory:UIContentSizeCategoryLarge]);
}

- (void)testTestLayerCategoryWithDisabledRecodedModeShouldCompareView {
    XCTAssertNoThrow([self testLayer:[self exampleLayer] contentSizeCategory:UIContentSizeCategoryLarge]);
}

#pragma mark - Helper methods

- (UIView *)exampleView {
    UIView *exampleView = [[UIView alloc] initWithFrame:AGViewFrame];
    exampleView.backgroundColor = [UIColor redColor];

    return exampleView;
}

- (CALayer *)exampleLayer {
    CALayer *exampleLayer = [[CALayer alloc] init];
    exampleLayer.frame = AGViewFrame;
    exampleLayer.backgroundColor = [UIColor blueColor].CGColor;

    return exampleLayer;
}

@end
