//
//  AGSnapshotController.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import "FBSnapshotTestCase+AGSnapshotHelper.h"
#import "AGPreferredContentSizeCategoryMocker.h"
#import "NSString+ContentSizeCategory.h"
#import "NSNotificationCenter+AGContentSizeCategory.h"

#import <FBSnapshotTestCase/FBSnapshotTestController.h>

@implementation FBSnapshotTestCase (AGSnapshotHelper)

- (void)testView:(UIView *)view contentSizeCategory:(NSString *)contentSizeCategory {

    [self testLayer:view.layer contentSizeCategory:contentSizeCategory];
}

- (void)testLayer:(CALayer *)layer contentSizeCategory:(NSString *)contentSizeCategory {

    XCTAssertTrue([contentSizeCategory ag_isContentSizeCategory], @"%@ is not a content size category string.", contentSizeCategory);

    AGPreferredContentSizeCategoryMocker *mocker = [[AGPreferredContentSizeCategoryMocker alloc] init];
    [mocker startMockingPreferredContentSizeCategory:contentSizeCategory];
    
    [[NSNotificationCenter defaultCenter] postNotificationChangeWithContentSizeCategory:contentSizeCategory];

    FBSnapshotVerifyLayer(layer, nil);

    [mocker stopMockingPreferredContentSizeCategory];
}

@end
