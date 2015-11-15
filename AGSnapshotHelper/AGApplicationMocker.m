//
//  AGApplicationMocker.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/11/15.
//  Copyright © 2015 allegro. All rights reserved.
//

#import "AGApplicationMocker.h"

#import <UIKit/UIKit.h>
#import <OCMock/OCMock.h>

@interface AGApplicationMocker ()

@property (nonatomic, strong) UIApplication *applicationMock;

@end

@implementation AGApplicationMocker

- (void)startMockingApplicationForContentSizeCategory:(NSString *)contentSizeCategory {

    self.applicationMock = OCMPartialMock([UIApplication sharedApplication]);
    OCMStub([self.applicationMock preferredContentSizeCategory]).andReturn(contentSizeCategory);

    [[NSNotificationCenter defaultCenter] postNotificationName:UIContentSizeCategoryDidChangeNotification
                                                        object:nil];
}

- (void)stopMockingApplication {

    [(id)self.applicationMock stopMocking];
    self.applicationMock = nil;
}

@end
