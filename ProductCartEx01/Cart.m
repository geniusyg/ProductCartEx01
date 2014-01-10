//
//  Cart.m
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Cart.h"

@interface Cart()

@end
@implementation Cart


- (void)addProduct:(Product *)item {

    CartItem *cartItem = [[CartItem alloc] init];
    cartItem.product = item;
    cartItem.quantity = 1;
    
    [self.items addObject:cartItem];
}

- (void)incQuantity:(NSString *)productCode {
    CartItem *item = [self cartItemWith:productCode];
    item.quantity++;
}

- (void)decQuantity:(NSString *)productCode {
    CartItem *item = [self cartItemWith:productCode];
    item.quantity--;
    

    if (0 == item.quantity) {
        [self.items removeObject:item];
    }
}


- (CartItem *)cartItemWith:(NSString *)productCode {
    for (CartItem *item in self.items) {
        if ([item.product isEqualProduct:productCode]) {
            return item;
        }
    }
    return nil;
}

- (id)init {
    self = [super init];
    if (self) {
        self.items = [[NSMutableArray alloc] init];
    }
    
    return self;
}
@end























