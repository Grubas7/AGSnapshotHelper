//
//  AGPreferredContentSizeCategoryMocker.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGPreferredContentSizeCategoryMocker : NSObject

- (void)startMockingPreferredContentSizeCategory:(nonnull NSString *)contentSizeCategory;

- (void)stopMockingPreferredContentSizeCategory;

@end
