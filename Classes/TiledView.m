//
//  TiledView.m
//  TSRM
//
//  Created by KISHIKAWA Katsumi on 09/04/26.
//  Copyright 2009 KISHIKAWA Katsumi. All rights reserved.
//

#import "TiledView.h"

@implementation TiledView

+ (Class)layerClass {  
    return [CATiledLayer class];  
}

- (CATiledLayer *)tiledLayer {  
    return (CATiledLayer *)self.layer;
}

- (void)drawRect:(CGRect)rect {
	CGContextRef context = UIGraphicsGetCurrentContext();  
    CGAffineTransform t = CGContextGetCTM(context);  
	
    int xmin = CGRectGetMinX(rect);  
    int ymin = CGRectGetMinY(rect);  
    int xmax = CGRectGetMaxX(rect);  
    int ymax = CGRectGetMaxY(rect);  
    int x = xmin / CGRectGetWidth(rect);  
    int y = ymin / CGRectGetHeight(rect);  
	
	NSLog(@"%@", [NSString stringWithFormat:@"%gx [%d,%d] (%d,%d)-(%d,%d)", t.a, x, y, xmin, ymin, xmax, ymax]);
	
	NSString *fileName = [NSString stringWithFormat:@"image-%02d-%02d.jpg", x + 1, y + 1];
	UIImage *image = [UIImage imageNamed:fileName];
	[image drawInRect:rect];
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView {
    [self setNeedsDisplay];  
    return NO;  
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {  
    return self;  
}

- (void)dealloc {
	[tiledLayer release];
    [super dealloc];
}

@end
