//
//  ViewController.m
//  CollectionViewExample
//
//  Created by Erick Bennett on 12/9/14.
//  Copyright (c) 2014 Erick Bennett. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma -mark
#pragma Collectionview Datasources
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    //reuse identifier from storyboard
    static NSString *CellIdentifier = @"MyCustomCell";
    
    //Set this to our collectionViewCell subclass
    MyCustomCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //Assign our image
    cell.cellImage.image = [UIImage imageNamed:@"Apple.png"];
    [cell.cellImage setHidden:YES];
    cell.userInteractionEnabled = YES;
    cell.delegate = self;
    [cell updateViewMy];
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}

#pragma -mark
#pragma Collectionview Delegates

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Did press cell at index %ld", indexPath.row);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)choseTerm:(UIButton *)button{
    
    NSLog(@"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  %ld",(long)button.tag);
}

@end
