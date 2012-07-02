//
//  main.m
//  Sleep Display
//
//  Created by Tobias Tom on 06.12.11.
//  Copyright (c) 2011 succont e.K. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "SleepDisplayAppDelegate.h"

int main(int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    SleepDisplayAppDelegate *appDelegate = [[SleepDisplayAppDelegate alloc] init];
    [[NSApplication sharedApplication] setDelegate:appDelegate];

    int status = NSApplicationMain(argc, (const char **)argv);

    [pool drain];
    return status;
}
