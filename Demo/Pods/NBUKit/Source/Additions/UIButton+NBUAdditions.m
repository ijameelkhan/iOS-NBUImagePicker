//
//  UIButton+NBUAdditions.m
//  NBUKit
//
//  Created by Ernesto Rivera on 2012/10/15.
//  Copyright (c) 2012-2017 CyberAgent Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "UIButton+NBUAdditions.h"
#import "NBUKitPrivate.h"

@implementation UIButton (NBUAdditions)

@dynamic enabled;
@dynamic hidden;
@dynamic tintColor;

- (void)setTitle:(NSString *)title
{
    [self setTitle:title
          forState:UIControlStateNormal];
}

- (NSString *)title
{
    return [self titleForState:UIControlStateNormal];
}

@end


@implementation UIBarButtonItem (NBUAdditions)

@dynamic title;
@dynamic enabled;
@dynamic hidden;
@dynamic tintColor;

@end

