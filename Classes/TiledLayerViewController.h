//
//  TiledLayerViewViewController.h
//  TiledLayerView
//
//  Created by KISHIKAWA Katsumi on 09/04/29.
//  Copyright KISHIKAWA Katsumi 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TiledView;

@interface TiledLayerViewController : UIViewController {
	UIScrollView *scrollView;
	TiledView *tiledView;
}

@end

