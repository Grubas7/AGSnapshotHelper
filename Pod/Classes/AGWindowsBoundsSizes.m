//
//  AGWindowsBoundsSizes.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 14/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import "AGWindowsBoundsSizes.h"

const struct AGDevicesWindowBoundsSizes AGDevicesWindowBoundsSizes = {

    .iPhone3_5Inch = {
        .portrait = { 320.0f, 480.0f },
        .landscape = { 480.0f, 320.0f }
    },

    .iPhone4Inch = {
        .portrait = { 320.0f, 568.0f },
        .landscape = { 568.0f, 320.0f }
    },

    .iPhone4_7Inch = {
        .portrait = { 375.0f, 667.0f },
        .landscape = { 667.0f, 375.0f }
    },

    .iPhone5_5Inch = {
        .portrait = { 414.0f, 736.0f },
        .landscape = { 736.0f, 414.0f }
    },

    .iPad = {
        .fullscreen = {
            .portrait = { 768.0f, 1024.0f },
            .landscape = { 1024.0f, 768.0f }
        },

        .splitView = {
            .small = {
                .portrait = { 320.0f, 1024.0f },
                .landscape = { 320.0f, 768.0f }
            },

            .half = {
                .landscape = { 507.0f, 768.0f }
            },

            .large = {
                .portrait = { 438.0f, 1024.0f },
                .landscape = { 694.0f, 768.0f }
            }
        }
    },

    .iPadPro = {
        .fullscreen = {
            .portrait = { 1024.0f, 1366.0f },
            .landscape = { 1366.0f, 1024.0f }
        },

        .splitView = {
            .small = {
                .portrait = { 375.0f, 1366.0f },
                .landscape = { 375.0f, 1024.0f }
            },

            .half = {
                .landscape = { 678.0f, 1024.0f }
            },

            .large = {
                .portrait = { 639.0f, 1366.0f },
                .landscape = { 981.0f, 1024.0f }
            }
        }
    }
};
