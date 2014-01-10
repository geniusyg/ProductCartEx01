//
//  Cart.h
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CartItem.h"

@class Product;

@interface Cart : NSObject

@property NSMutableArray *items;

- (void)addProduct:(Product *)item;

- (void)incQuantity:(NSString *)productCode;
- (void)decQuantity:(NSString *)productCode;
- (CartItem *)cartItemWith:(NSString *)productCode;
@end
