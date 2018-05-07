//
//  AGDeviceViewMockParameters.h
//  AGSnapshotHelperTests
//
//  Created by Adam Grzegorowski on 10/03/2018.
//  Copyright © 2018 Allegro Group. All rights reserved.
//

@import AGSnapshotHelper;
@import Foundation;
@import UIKit;

// Swift does not allow to mark stored properties with @available() atribute,
// so use Objective-C which works fine.
NS_SWIFT_NAME(DeviceViewMockParameters)
@interface AGDeviceViewMockParameters : NSObject<AGDeviceMockable, AGViewMockable>

// AGDeviceMockable
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) UIInterfaceOrientation orientation;
@property (nonatomic, assign) UIUserInterfaceIdiom userInterfaceIdiom;

// AGViewMockable
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) UIEdgeInsets safeAreaInsets;
@property (nonatomic, assign) UIEdgeInsets layoutMargins;
@property (nonatomic, assign) UIUserInterfaceSizeClass horizontalSizeClass;
@property (nonatomic, assign) UIUserInterfaceSizeClass verticalSizeClass;
@property (nonatomic, strong) UIContentSizeCategory preferredContentSizeCategory NS_AVAILABLE_IOS(10.0);
@property (nonatomic, assign) UITraitEnvironmentLayoutDirection layoutDirection NS_AVAILABLE_IOS(10.0);
@property (nonatomic, assign) NSDirectionalEdgeInsets directionalLayoutMargins NS_AVAILABLE_IOS(11.0);

@end
