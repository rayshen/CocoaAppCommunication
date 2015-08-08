//
//  MSAppDelegate.m
//  CocoaB
//
//  Created by ZhangAo on 14-7-30.
//  Copyright (c) 2014年 ZA. All rights reserved.
//

#import "MSAppDelegate.h"

@interface MSAppDelegate ()
@property (nonatomic, weak) IBOutlet NSTextField *destField;
@end

@implementation MSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self.destField setStringValue:[[NSProcessInfo processInfo] arguments].lastObject];
}

@end
