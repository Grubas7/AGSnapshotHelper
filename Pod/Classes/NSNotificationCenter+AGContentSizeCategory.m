//
//  NSNotificationCenter+AGContentSizeCategory.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 10/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import "NSNotificationCenter+AGContentSizeCategory.h"

// `UIContentSizeCategoryTextLegibilityEnabledKey` is not documented.
// This key refers to `Bold Text` setting in accessibility. Default value for this key is NO.
static NSString *const AGSnapshotHelperBoldAccessibility = @"UIContentSizeCategoryTextLegibilityEnabledKey";

@implementation NSNotificationCenter (AGContentSizeCategory)

- (void)postNotificationChangeWithContentSizeCategory:(NSString *)contentSizeCategory {
    NSNotification *contentSizeCategoryNotification = [self notificationForContentSizeCategory:contentSizeCategory];
    [self postNotification:contentSizeCategoryNotification];
}

- (NSNotification *)notificationForContentSizeCategory:(NSString *)contentSizeCategory {
    NSDictionary *userInfo = @{
        AGSnapshotHelperBoldAccessibility: @NO,
        UIContentSizeCategoryNewValueKey: contentSizeCategory
    };

    return [NSNotification notificationWithName:UIContentSizeCategoryDidChangeNotification object:nil userInfo:userInfo];
}

@end
