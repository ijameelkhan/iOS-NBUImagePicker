//
//  AppDelegate.m
//  PickerDemo
//
//  Created by Ernesto Rivera on 2013/11/25.
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

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Configure NBULog
#if defined (DEBUG) ||  defined (TESTING)
    // Add dashboard logger
    [NBULog addDashboardLogger];
#endif
    
    NBULogTrace();
    
    // Customize iOS 7 appearance
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0"))
    {
        UIColor * tintColor = [UIColor colorWithRed:76.0/255.0
                                              green:19.0/255.0
                                               blue:136.0/255.0
                                              alpha:1.0];
        self.window.tintColor = tintColor;
        [UIButton appearance].tintColor = tintColor;
        [[UIButton appearance] setTitleColor:tintColor
                                    forState:UIControlStateNormal];
        [UISwitch appearance].tintColor = tintColor;
        [UISwitch appearance].onTintColor = tintColor;
        
        // [[UINavigationBar appearance] setBarTintColor:];
        // [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    }
    
    return YES;
}
							
@end

