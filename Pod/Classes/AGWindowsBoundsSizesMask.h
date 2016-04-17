//
//  AGWindowsBoundsSizesMask.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 17/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AGWindowsBoundsSizes.h"

/**
 Mask with all iOS devices window bounds sizes in portrait and landscape orientation.
 */
typedef NS_OPTIONS(NSUInteger, AGWindowBoundsSizesMask) {

    // iPhone
    AGWindowBoundsSizeiPhone3_5InchPortrait  = 1 << 0,
    AGWindowBoundsSizeiPhone3_5InchLandscape = 1 << 1,

    AGWindowBoundsSizeiPhone4InchPortrait    = 1 << 2,
    AGWindowBoundsSizeiPhone4InchLandscape   = 1 << 3,

    AGWindowBoundsSizeiPhone4_7InchPortrait  = 1 << 4,
    AGWindowBoundsSizeiPhone4_7InchLandscape = 1 << 5,

    AGWindowBoundsSizeiPhone5_5InchPortrait  = 1 << 6,
    AGWindowBoundsSizeiPhone5_5InchLandscape = 1 << 7,

    // iPad
    AGWindowBoundsSizeiPadFullScreenPortrait = 1 << 8,
    AGWindowBoundsSizeiPadFullScreenLandscape = 1 << 9,

    AGWindowBoundsSizeiPadSplitViewSmallPortrait = 1 << 10,
    AGWindowBoundsSizeiPadSplitViewSmallLandscape = 1 << 11,

    AGWindowBoundsSizeiPadSplitViewHalfLandscape = 1 << 12,

    AGWindowBoundsSizeiPadSplitViewLargePortrait = 1 << 13,
    AGWindowBoundsSizeiPadSplitViewLargeLandscape = 1 << 14,

    // iPad Pro
    AGWindowBoundsSizeiPadProFullScreenPortrait = 1 << 15,
    AGWindowBoundsSizeiPadProFullScreenLandscape = 1 << 16,

    AGWindowBoundsSizeiPadProSplitViewSmallPortrait = 1 << 17,
    AGWindowBoundsSizeiPadProSplitViewSmallLandscape = 1 << 18,

    AGWindowBoundsSizeiPadProSplitViewHalfLandscape = 1 << 19,

    AGWindowBoundsSizeiPadProSplitViewLargePortrait = 1 << 20,
    AGWindowBoundsSizeiPadProSplitViewLargeLandscape = 1 << 21,

    // iPhones
    AGWindowBoundsSizesiPhone3_5Inch = AGWindowBoundsSizeiPhone3_5InchPortrait | AGWindowBoundsSizeiPhone3_5InchLandscape,
    AGWindowBoundsSizesiPhone4Inch = AGWindowBoundsSizeiPhone4InchPortrait | AGWindowBoundsSizeiPhone4InchLandscape,
    AGWindowBoundsSizesiPhone4_7Inch = AGWindowBoundsSizeiPhone4_7InchPortrait | AGWindowBoundsSizeiPhone4_7InchLandscape,
    AGWindowBoundsSizesiPhone5_5Inch = AGWindowBoundsSizeiPhone5_5InchPortrait | AGWindowBoundsSizeiPhone5_5InchLandscape,
    AGWindowBoundsSizesiPhones = AGWindowBoundsSizesiPhone3_5Inch | AGWindowBoundsSizesiPhone4Inch | AGWindowBoundsSizesiPhone4_7Inch | AGWindowBoundsSizesiPhone5_5Inch,

    // iPads
    AGWindowBoundsSizesiPadFullScreen = AGWindowBoundsSizeiPadFullScreenPortrait | AGWindowBoundsSizeiPadFullScreenLandscape,
    AGWindowBoundsSizesiPadSplitView = AGWindowBoundsSizeiPadSplitViewSmallPortrait | AGWindowBoundsSizeiPadSplitViewSmallLandscape | AGWindowBoundsSizeiPadSplitViewHalfLandscape | AGWindowBoundsSizeiPadSplitViewLargePortrait | AGWindowBoundsSizeiPadSplitViewLargeLandscape,
    AGWindowBoundsSizesiPad = AGWindowBoundsSizesiPadFullScreen | AGWindowBoundsSizesiPadSplitView,

    // iPads Pro
    AGWindowBoundsSizesiPadProFullScreen = AGWindowBoundsSizeiPadProFullScreenPortrait | AGWindowBoundsSizeiPadProFullScreenLandscape,
    AGWindowBoundsSizesiPadProSplitView = AGWindowBoundsSizeiPadProSplitViewSmallPortrait | AGWindowBoundsSizeiPadProSplitViewSmallLandscape | AGWindowBoundsSizeiPadProSplitViewHalfLandscape | AGWindowBoundsSizeiPadProSplitViewLargePortrait | AGWindowBoundsSizeiPadProSplitViewLargeLandscape,
    AGWindowBoundsSizesiPadPro = AGWindowBoundsSizesiPadProFullScreen | AGWindowBoundsSizesiPadProSplitView,

    AGWindowBoundsSizesiPads = AGWindowBoundsSizesiPad | AGWindowBoundsSizesiPadPro,
    AGWindowBoundsSizesAll = AGWindowBoundsSizesiPhones | AGWindowBoundsSizesiPads
};

@interface AGWindowBoundsSizesMaskConverter : NSObject

/**
 Translates given mask to NSValue objects.
 @param mask: Mask with windows bounds sizes
 @returns: Array of NSValue objects
 */
+ (nullable NSArray<NSValue *> *)windowBoundsSizesForMask:(AGWindowBoundsSizesMask)mask;

/**
 Returns name for size. For size which is not size of iOS devices screens returns `nil`.
 @param mask: Size of windows bounds sizes
 @returns: Name for size. May return `nil`
 */
+ (nullable NSString *)nameForSize:(CGSize)size;

@end

