//
//  AGWindowsBoundsSizes.h
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 14/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - iPhone

/**
 Struct of iPhone possible application window bounds.
 */
struct AGiPhoneWindowBoundsSizes {
    CGSize portrait;
    CGSize landscape;
};

typedef struct AGiPhoneWindowBoundsSizes AGiPhoneWindowBoundsSizes;

#pragma mark - iPad

/**
 Struct of iPad possible application window bounds.
 */
struct AGiPadWindowBoundsSizes {

    struct fullscreen {
        CGSize portrait;
        CGSize landscape;
    } fullscreen;

    struct splitView {

        struct small {
            CGSize portrait;
            CGSize landscape;
        } small;

        struct half {
            CGSize landscape;
        } half;

        struct large {
            CGSize portrait;
            CGSize landscape;
        } large;

    } splitView;
};

typedef struct AGiPadWindowBoundsSizes AGiPadWindowBoundSizes;

#pragma mark - Devices

/**
 Struct with all iOS devices window bounds sizes.
 */
struct AGDevicesWindowBoundsSizes {

    // iPhone
    AGiPhoneWindowBoundsSizes iPhone3_5Inch;
    AGiPhoneWindowBoundsSizes iPhone4Inch;
    AGiPhoneWindowBoundsSizes iPhone4_7Inch;
    AGiPhoneWindowBoundsSizes iPhone5_5Inch;

    // iPad
    AGiPadWindowBoundSizes iPad;

    // iPad Pro
    AGiPadWindowBoundSizes iPadPro;
};

extern const struct AGDevicesWindowBoundsSizes AGDevicesWindowBoundsSizes;
