//
//  AGSnapshotController.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import "FBSnapshotTestCase+AGSnapshotHelper.h"
#import "AGApplicationMocker.h"
#import "NSString+ContentSizeCategory.h"

#import <FBSnapshotTestCase/FBSnapshotTestController.h>

@implementation FBSnapshotTestCase (AGSnapshotHelper)

- (void)testView:(UIView *)view contentSizeCategory:(NSString *)contentSizeCategory {

    [self testLayer:view.layer contentSizeCategory:contentSizeCategory];
}

- (void)testLayer:(CALayer *)layer contentSizeCategory:(NSString *)contentSizeCategory {

    NSAssert1([contentSizeCategory ag_isContentSizeCategory], @"%@ is not a content size category string.", contentSizeCategory);

    AGApplicationMocker *applicationMocker = [[AGApplicationMocker alloc] init];
    [applicationMocker startMockingApplicationForContentSizeCategory:contentSizeCategory];

    FBSnapshotTestController *snapshotTestController = [[FBSnapshotTestController alloc] initWithTestName:@"testName"];
    BOOL compareSuccessful = [snapshotTestController compareSnapshotOfLayer:layer
                                                                   selector:self.invocation.selector
                                                                 identifier:nil
                                                                      error:nil];

    [applicationMocker stopMockingApplication];

    NSAssert(compareSuccessful, @"Comparasion failed.");
}

@end
