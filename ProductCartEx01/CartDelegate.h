//
//  CartDelegate.h
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CartDelegate <NSObject>


- (void)addItem:(id)sender;


- (void)incQuantity:(NSString *)productCode;
- (void)decQuantity:(NSString *)productCode;

@end
