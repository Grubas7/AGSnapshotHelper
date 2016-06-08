//
//  AGWindowsBoundsSizesMask.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 17/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import "AGWindowsBoundsSizesMask.h"

@implementation AGWindowBoundsSizesMaskConverter

+ (NSArray<NSValue *> *)windowBoundsSizesForMask:(AGWindowBoundsSizesMask)mask {

    NSMutableArray<NSValue *> *sizes = [NSMutableArray arrayWithCapacity:21];

    // iPhone
    if (mask & AGWindowBoundsSizeiPhone3_5InchPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone3_5Inch.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPhone3_5InchLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone3_5Inch.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPhone4InchPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone4Inch.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPhone4InchLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone4Inch.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPhone4_7InchPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone4_7Inch.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPhone4_7InchLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone4_7Inch.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPhone5_5InchPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone5_5Inch.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPhone5_5InchLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPhone5_5Inch.landscape]];
    }

    // iPad
    if (mask & AGWindowBoundsSizeiPadFullScreenPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPad.fullscreen.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPadFullScreenLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPad.fullscreen.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPadSplitViewSmallPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPad.splitView.small.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPadSplitViewSmallLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPad.splitView.small.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPadSplitViewHalfLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPad.splitView.half.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPadSplitViewLargePortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPad.splitView.large.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPadSplitViewLargeLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPad.splitView.large.landscape]];
    }

    // iPad Pro
    if (mask & AGWindowBoundsSizeiPadProFullScreenPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPadPro.fullscreen.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPadProFullScreenLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPadPro.fullscreen.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPadProSplitViewSmallPortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPadPro.splitView.small.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPadProSplitViewSmallLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPadPro.splitView.small.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPadProSplitViewHalfLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPadPro.splitView.half.landscape]];
    }
    if (mask & AGWindowBoundsSizeiPadProSplitViewLargePortrait) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPadPro.splitView.large.portrait]];
    }
    if (mask & AGWindowBoundsSizeiPadProSplitViewLargeLandscape) {
        [sizes addObject:[NSValue valueWithCGSize:AGDevicesWindowBoundsSizes.iPadPro.splitView.large.landscape]];
    }

    return [sizes copy];
}

+ (nullable NSString *)nameForSize:(CGSize)size {

    // iPhone
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone3_5Inch.portrait)) {
        return @"iPhone3_5InchPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone3_5Inch.landscape)) {
        return @"iPhone3_5InchLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone4Inch.portrait)) {
        return @"iPhone4InchPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone4Inch.landscape)) {
        return @"iPhone4InchLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone4_7Inch.portrait)) {
        return @"iPhone4_7InchPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone4_7Inch.landscape)) {
        return @"iPhone4_7InchLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone5_5Inch.portrait)) {
        return @"iPhone5_5InchPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPhone5_5Inch.landscape)) {
        return @"iPhone5_5InchLandscape";
    }

    // iPad
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPad.fullscreen.portrait)) {
        return @"iPadFullScreenPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPad.fullscreen.landscape)) {
        return @"iPadFullScreenLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPad.splitView.small.portrait)) {
        return @"iPadSplitViewSmallPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPad.splitView.small.landscape)) {
        return @"iPadSplitViewSmallLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPad.splitView.half.landscape)) {
        return @"iPadSplitViewHalfLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPad.splitView.large.portrait)) {
        return @"iPadSplitViewLargePortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPad.splitView.large.landscape)) {
        return @"iPadSplitViewLargeLandscape";
    }

    // iPad Pro
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPadPro.fullscreen.portrait)) {
        return @"iPadProFullScreenPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPadPro.fullscreen.landscape)) {
        return @"iPadProFullScreenLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPadPro.splitView.small.portrait)) {
        return @"iPadProSplitViewSmallPortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPadPro.splitView.small.landscape)) {
        return @"iPadProSplitViewSmallLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPadPro.splitView.half.landscape)) {
        return @"iPadProSplitViewHalfLandscape";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPadPro.splitView.large.portrait)) {
        return @"iPadProSplitViewLargePortrait";
    }
    if (CGSizeEqualToSize(size, AGDevicesWindowBoundsSizes.iPadPro.splitView.large.landscape)) {
        return @"iPadProSplitViewLargeLandscape";
    }

    return nil;
}

@end
