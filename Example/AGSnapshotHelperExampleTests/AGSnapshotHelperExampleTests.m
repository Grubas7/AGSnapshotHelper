//
//  AGSnapshotHelperExampleTests.m
//  AGSnapshotHelperExampleTests
//
//  Created by Ewa Bielska on 16/01/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import "ViewController.h"

#import <UIKit/UIKit.h>
#import <AGSnapshotHelper/FBSnapshotTestCase+AGSnapshotHelper.h>

@interface AGSnapshotHelperExampleTests : FBSnapshotTestCase

@end

@implementation AGSnapshotHelperExampleTests

- (void)setUp {
    [super setUp];
    
    self.deviceAgnostic = YES;
    self.recordMode = NO;
}

- (UIView *)initialView {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *initialViewController = [storyboard instantiateInitialViewController];
    
    return initialViewController.view;
}

- (void)testExample {
    [self testView:[self initialView] contentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
}

@end
