//
//  TiledLayerViewAppDelegate.m
//  TiledLayerView
//
//  Created by KISHIKAWA Katsumi on 09/04/29.
//  Copyright KISHIKAWA Katsumi 2009. All rights reserved.
//

#import "TiledLayerViewAppDelegate.h"
#import "TiledLayerViewController.h"

@implementation TiledLayerViewAppDelegate

@synthesize window;
@synthesize viewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}

@end
