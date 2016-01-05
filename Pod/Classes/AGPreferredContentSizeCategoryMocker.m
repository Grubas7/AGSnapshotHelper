//
//  AGPreferredContentSizeCategoryMocker.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import "AGPreferredContentSizeCategoryMocker.h"

#import <UIKit/UIKit.h>
#import <OCMock/OCMock.h>

@interface AGPreferredContentSizeCategoryMocker ()

@property (nonatomic, strong) UIApplication *applicationMock;

@end

@implementation AGPreferredContentSizeCategoryMocker

- (void)startMockingPreferredContentSizeCategory:(NSString *)contentSizeCategory {

    self.applicationMock = OCMPartialMock([UIApplication sharedApplication]);
    OCMStub([self.applicationMock preferredContentSizeCategory]).andReturn(contentSizeCategory);
}

- (void)stopMockingPreferredContentSizeCategory {

    [(id)self.applicationMock stopMocking];
    self.applicationMock = nil;
}

@end
