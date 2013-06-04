//
//  TableViewController.m
//  proekt1
//
//  Created by Хасбулатов Керим on 21.05.13.
//  Copyright (c) 2013 Хасбулатов Керим. All rights reserved.
//

#import "TableViewController.h"
#import "PictureViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PictureViewController *picture = [self.storyboard instantiateViewControllerWithIdentifier:@"PictureViewController"];
    NSIndexPath *selectedPath = self.tableView.indexPathForSelectedRow;
    UITableViewCell *selectedCell = [self.tableView cellForRowAtIndexPath:selectedPath];
    picture.marshrutka = selectedCell.textLabel.text;
    [self.navigationController pushViewController:picture animated:YES];
   
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
}

@end
