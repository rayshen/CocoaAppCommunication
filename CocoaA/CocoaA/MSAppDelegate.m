//
//  MSAppDelegate.m
//  CocoaA
//
//  Created by ZhangAo on 14-7-30.
//  Copyright (c) 2014年 ZA. All rights reserved.
//

#import "MSAppDelegate.h"

@interface MSAppDelegate ()
@property (nonatomic, weak) IBOutlet NSTextField *sourceField;
@end

@implementation MSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(IBAction)buttonClicked:(id)sender{
    //1.直接运行
//    [[NSWorkspace sharedWorkspace] launchApplication:@"CocoaB"];
    //2.带参数运行
    NSWorkspace *workspace = [NSWorkspace sharedWorkspace];
    NSError *error;
    [workspace launchApplicationAtURL:[NSURL fileURLWithPath:[workspace fullPathForApplication:@"CocoaB"]]
                              options:NSWorkspaceLaunchDefault
                        configuration:@{NSWorkspaceLaunchConfigurationArguments: @[self.sourceField.stringValue]}
                                error:&error];
}

@end
