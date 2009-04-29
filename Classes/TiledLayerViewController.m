//
//  TiledLayerViewViewController.m
//  TiledLayerView
//
//  Created by KISHIKAWA Katsumi on 09/04/29.
//  Copyright KISHIKAWA Katsumi 2009. All rights reserved.
//

#import "TiledLayerViewController.h"
#import "TiledView.h"

@implementation TiledLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	tiledView = [[TiledView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 2448.0f, 3264.0f)];
	tiledView.tiledLayer.tileSize = CGSizeMake(245.0f, 327.0f);
	tiledView.tiledLayer.levelsOfDetail = 1;
	tiledView.tiledLayer.levelsOfDetailBias = 0;
	
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 460.0f)];  
    scrollView.contentSize = tiledView.bounds.size;  
    scrollView.maximumZoomScale = 4.0f;  
	scrollView.minimumZoomScale = 0.5f;  
    scrollView.delegate = tiledView;
    [scrollView addSubview:tiledView];
	
    [self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
	[scrollView release];
	[tiledView release];
    [super dealloc];
}

@end
