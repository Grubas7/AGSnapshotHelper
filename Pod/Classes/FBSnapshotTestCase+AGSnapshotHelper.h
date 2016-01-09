//
//  AGSnapshotController.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

@interface FBSnapshotTestCase (AGSnapshotHelper)

- (void)testView:(nonnull UIView *)view contentSizeCategory:(nonnull NSString *)contentSizeCategory;

- (void)testLayer:(nonnull CALayer *)layer contentSizeCategory:(nonnull NSString *)contentSizeCategory;

@end
