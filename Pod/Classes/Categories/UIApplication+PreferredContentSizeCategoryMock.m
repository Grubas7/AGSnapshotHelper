//
//  UIApplication+PreferredContentSizeCategoryMock.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 15/08/2017.
//  Copyright © 2017 Grupa Allegro. All rights reserved.
//

#import "UIApplication+PreferredContentSizeCategoryMock.h"
#import <objc/runtime.h>

static char kContentSizeCategoryKey;

@implementation UIApplication (PreferredContentSizeCategoryMock)

#pragma mark - Public

- (void)startMockingPreferredContentSizeCategory:(UIContentSizeCategory)contentSizeCategory {
    objc_setAssociatedObject(self, &kContentSizeCategoryKey, contentSizeCategory, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)stopMockingPreferredContentSizeCategory {
    objc_setAssociatedObject(self, &kContentSizeCategoryKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Private

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];

        SEL originalSelector = @selector(preferredContentSizeCategory);
        SEL swizzledSelector = @selector(ag_preferredContentSizeCategory);

        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);

        BOOL didAddMethod = class_addMethod(class,
                                            originalSelector,
                                            method_getImplementation(swizzledMethod),
                                            method_getTypeEncoding(swizzledMethod));

        if (didAddMethod) {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

#pragma mark - Method Swizzling

- (UIContentSizeCategory)ag_preferredContentSizeCategory {
    UIContentSizeCategory contentSizeCategoryToMock = objc_getAssociatedObject(self, &kContentSizeCategoryKey);
    if (contentSizeCategoryToMock != nil) {
        return contentSizeCategoryToMock;
    }

    return [self ag_preferredContentSizeCategory];
}

@end
