//
//  TiledView.h
//  TSRM
//
//  Created by KISHIKAWA Katsumi on 09/04/26.
//  Copyright 2009 KISHIKAWA Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TiledView : UIView <UIScrollViewDelegate> {
	CATiledLayer *tiledLayer;
}

@property (nonatomic, readonly) CATiledLayer *tiledLayer;

@end
