//
//  AGPreferredContentSizeCategoryMocker.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import "AGPreferredContentSizeCategoryMocker.h"
#import "UIApplication+PreferredContentSizeCategoryMock.h"

@import UIKit;

@interface AGPreferredContentSizeCategoryMocker ()

@property (nonatomic, strong) UIApplication *applicationMock;

@end

@implementation AGPreferredContentSizeCategoryMocker

- (void)startMockingPreferredContentSizeCategory:(NSString *)contentSizeCategory {
    [UIApplication sharedApplication].mockedContentSizeCategory = contentSizeCategory;
}

- (void)stopMockingPreferredContentSizeCategory {
    [UIApplication sharedApplication].mockedContentSizeCategory = nil;
}

@end
