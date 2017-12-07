//
//  NSNotificationCenter+AGContentSizeCategory.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 10/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (AGContentSizeCategory)

- (void)postNotificationChangeWithContentSizeCategory:(nonnull UIContentSizeCategory)contentSizeCategory;

@end
