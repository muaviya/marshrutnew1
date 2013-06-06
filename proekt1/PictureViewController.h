//
//  PictureViewController.h
//  proekt1
//
//  Created by Хасбулатов Керим on 20.05.13.
//  Copyright (c) 2013 Хасбулатов Керим. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictureViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scroll;
@property NSString *marshrutka;

@property (nonatomic) float zoomScale;
- (void)setZoomScale:(float)scale animated:(BOOL)animated;
- (void)zoomToRect:(CGRect)zoomRect animated:(BOOL)animated;

@property(nonatomic) CGPoint contentOffset;
@end
