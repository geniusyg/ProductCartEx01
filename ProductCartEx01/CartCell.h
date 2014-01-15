//
//  CartCell.h
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CartDelegate.h"
#import "CartItem.h"

@interface CartCell : UITableViewCell

@property (weak) id<CartCellDelegate> delegate;

- (void)setCartItem:(CartItem *)item;

@end
