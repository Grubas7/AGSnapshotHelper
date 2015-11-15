//
//  AGApplicationMocker.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGApplicationMocker : NSObject

- (void)startMockingApplicationForContentSizeCategory:(NSString *)contentSizeCategory;

- (void)stopMockingApplication;

@end
