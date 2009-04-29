//
//  TiledLayerViewAppDelegate.h
//  TiledLayerView
//
//  Created by KISHIKAWA Katsumi on 09/04/29.
//  Copyright KISHIKAWA Katsumi 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TiledLayerViewController;

@interface TiledLayerViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TiledLayerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TiledLayerViewController *viewController;

@end

