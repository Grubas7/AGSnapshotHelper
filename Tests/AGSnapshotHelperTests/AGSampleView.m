//
//  AGSampleView.m
//  AGSnapshotHelper
//
//  Created by Adam Grzegorowski on 02/06/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

#import "AGSampleView.h"

@interface AGSampleView ()

@property (nonatomic, strong) id<NSObject> contentSizeCategoryObserver;
@property (nonatomic, strong) UILabel *topLeftLabel;
@property (nonatomic, strong) UILabel *topRightLabel;
@property (nonatomic, strong) UILabel *bottomLeftLabel;
@property (nonatomic, strong) UILabel *bottomRightLabel;

@end

@implementation AGSampleView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];

    self.backgroundColor = [UIColor greenColor];
    [self setUpLabels];
    [self setUpContentSizeCategoryObserver];

    return self;
}

- (void)dealloc {
    [self tearDownContentSizeCategoryObserver];
}

- (void)setUpContentSizeCategoryObserver {
    self.contentSizeCategoryObserver = [[NSNotificationCenter defaultCenter] addObserverForName:UIContentSizeCategoryDidChangeNotification
                                                                                         object:nil
                                                                                          queue:nil
                                                                                     usingBlock:^(NSNotification * _Nonnull notification) {
                                                                                         [self updateLabel:self.topLeftLabel];
                                                                                         [self updateLabel:self.topRightLabel];
                                                                                         [self updateLabel:self.bottomLeftLabel];
                                                                                         [self updateLabel:self.bottomRightLabel];
                                                                                     }];
}

- (void)tearDownContentSizeCategoryObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self.contentSizeCategoryObserver
                                                    name:UIContentSizeCategoryDidChangeNotification
                                                  object:nil];
}

- (void)setUpLabels {
    self.topLeftLabel = [self labelWithText:@"top left"];
    [self activateConstraintForLabel:self.topLeftLabel withAttribute:NSLayoutAttributeTop];
    [self activateConstraintForLabel:self.topLeftLabel withAttribute:NSLayoutAttributeLeft];

    self.topRightLabel = [self labelWithText:@"top right"];
    [self activateConstraintForLabel:self.topRightLabel withAttribute:NSLayoutAttributeTop];
    [self activateConstraintForLabel:self.topRightLabel withAttribute:NSLayoutAttributeRight];

    self.bottomLeftLabel = [self labelWithText:@"bottom left"];
    [self activateConstraintForLabel:self.bottomLeftLabel withAttribute:NSLayoutAttributeBottom];
    [self activateConstraintForLabel:self.bottomLeftLabel withAttribute:NSLayoutAttributeLeft];

    self.bottomRightLabel = [self labelWithText:@"bottom right"];
    [self activateConstraintForLabel:self.bottomRightLabel withAttribute:NSLayoutAttributeBottom];
    [self activateConstraintForLabel:self.bottomRightLabel withAttribute:NSLayoutAttributeRight];
}

- (UILabel *)labelWithText:(NSString *)text {
    UILabel *label = [[UILabel alloc] init];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.text = text;
    label.backgroundColor = [UIColor redColor];
    [self addSubview:label];

    return label;
}

- (void)updateLabel:(UILabel *)label {
    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];

    label.font = font;
    [label sizeToFit];
}

- (void)activateConstraintForLabel:(UILabel *)label withAttribute:(NSLayoutAttribute)attribute {
    [NSLayoutConstraint constraintWithItem:self
                                 attribute:attribute
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:label
                                 attribute:attribute
                                multiplier:1.0
                                  constant:0.0].active = YES;
}

@end
