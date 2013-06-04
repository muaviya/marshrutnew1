//
//  PictureViewController.m
//  proekt1
//
//  Created by Хасбулатов Керим on 20.05.13.
//  Copyright (c) 2013 Хасбулатов Керим. All rights reserved.
//

#import "PictureViewController.h"

@interface PictureViewController () <UIScrollViewDelegate>
@property UIImageView *imageView;
@end

@implementation PictureViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:@"1.png" forKey:@"1"];
    [dict setObject:@"1а.png" forKey:@"1а"];
    [dict setObject:@"1 как трол.png" forKey:@"1 как трол"];
    [dict setObject:@"2 как трол.png" forKey:@"2 как трол"];
    [dict setObject:@"2.png" forKey:@"2"];
    [dict setObject:@"3.png" forKey:@"3"];
    [dict setObject:@"3а.png" forKey:@"3а"];
    [dict setObject:@"3б.png" forKey:@"3б"];
    [dict setObject:@"4.png" forKey:@"4"];
     [dict setObject:@"4а.png" forKey:@"4а"];
    [dict setObject:@"5.png" forKey:@"5"];
    [dict setObject:@"6.png" forKey:@"6"];
    [dict setObject:@"7.png" forKey:@"7"];
    [dict setObject:@"8.png" forKey:@"8"];
    [dict setObject:@"9.png" forKey:@"9"];
    [dict setObject:@"10.png" forKey:@"10"];
    [dict setObject:@"11 как трол.png" forKey:@"11 как трол"];
    [dict setObject:@"11.png" forKey:@"11"];
    [dict setObject:@"11а.png" forKey:@"11а"];
    [dict setObject:@"12.png" forKey:@"12"];
    [dict setObject:@"12а.png" forKey:@"12а"];
    [dict setObject:@"13а.png" forKey:@"13а"];
    [dict setObject:@"15.png" forKey:@"15"];
    [dict setObject:@"15а.png" forKey:@"15а"];
    [dict setObject:@"15б.png" forKey:@"15б"];
    [dict setObject:@"16.png" forKey:@"16"];
    [dict setObject:@"17.png" forKey:@"17"];
    [dict setObject:@"18.png" forKey:@"18"];
    [dict setObject:@"19.png" forKey:@"19"];
    [dict setObject:@"20.png" forKey:@"20"];
    [dict setObject:@"20а.png" forKey:@"20а"];
    [dict setObject:@"21.png" forKey:@"21"];
    [dict setObject:@"21а.png" forKey:@"21а"];
    [dict setObject:@"25.png" forKey:@"25"];
    [dict setObject:@"69.png" forKey:@"69"];
    
    
    
    
    
    
	
    UIImage *picture = [UIImage imageNamed:[dict valueForKey:self.marshrutka]];
    self.imageView = [[UIImageView alloc] initWithImage:picture];
    [self.scroll setContentSize:picture.size];
    [self.scroll addSubview:self.imageView];
    self.scroll.maximumZoomScale = 20.0;
    self.scroll.delegate = self;
    [self.scroll setContentOffset:CGPointMake(picture.size.width / 2, picture.size.height / 2 )];
    
    NSLog(self.marshrutka);
    
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)sender{
    
    return self.imageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
