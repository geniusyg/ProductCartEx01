//
//  CartItem.h
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface CartItem : NSObject

@property (weak, nonatomic) Product *product;
@property (nonatomic) NSInteger quantity;

@end
