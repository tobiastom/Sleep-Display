//
//  SleepDisplayAppDelegate.m
//  Sleep Display
//
//  Created by Tobias Tom on 06.12.11.
//  Copyright (c) 2011 succont e.K. All rights reserved.
//

#import "SleepDisplayAppDelegate.h"
#import <ApplicationServices/ApplicationServices.h>

@implementation SleepDisplayAppDelegate

- (void)dealloc {
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    io_registry_entry_t r = IORegistryEntryFromPath(kIOMasterPortDefault, "IOService:/IOResources/IODisplayWrangler");
    if (r) {
        IORegistryEntrySetCFProperty(r, CFSTR("IORequestIdle"), kCFBooleanTrue);
        IOObjectRelease(r);
    }

    [[NSApplication sharedApplication] terminate:nil];
}

@end
