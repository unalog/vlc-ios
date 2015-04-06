/*****************************************************************************
 * VLCBaseInterfaceController.m
 * VLC for iOS
 *****************************************************************************
 * Copyright (c) 2015 VideoLAN. All rights reserved.
 * $Id$
 *
 * Author: Tobias Conradi <videolan # tobias-conradi.de>
 *
 * Refer to the COPYING file of the official project for license.
 *****************************************************************************/

#import "VLCBaseInterfaceController.h"

@implementation VLCBaseInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

}

- (void)addNowPlayingMenu {
    [self addMenuItemWithItemIcon:WKMenuItemIconMore title: NSLocalizedString(@"NOW_PLAYING", nil) action:@selector(showNowPlaying:)];
}

- (void)showNowPlaying:(id)sender {
    [self presentControllerWithName:@"nowPlaying" context:nil];
}


- (void)willActivate {
    [super willActivate];
    _activated = YES;
}
- (void)didDeactivate {
    [super didDeactivate];
    _activated = NO;
}

@end
