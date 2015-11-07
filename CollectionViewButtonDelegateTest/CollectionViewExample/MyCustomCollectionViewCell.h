//
//  MyCustomCollectionViewCell.h
//  CollectionViewExample
//
//  Created by Erick Bennett on 12/9/14.
//  Copyright (c) 2014 Erick Bennett. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FristSectionCollectionViewCellDelegate <NSObject>
@required
- (void)choseTerm:(UIButton *)button;
-(void)changeButtonBackgroundColor:(UIButton *)button;
@end

@interface MyCustomCollectionViewCell : UICollectionViewCell

@property(nonatomic,assign)id<FristSectionCollectionViewCellDelegate> delegate;
@property(nonatomic,strong)UIButton *eight_btn;
-(void)eight_btn_click:(UIButton *)btn;


@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
-(void)updateViewMy;
@end
