//
//  Product.m
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Product.h"

@implementation Product

+ (id)productWithName:(NSString *)name price:(NSInteger)price image:(NSString *)image productCode:(NSString *)productCode detail:(NSString *)detail{
	Product *item = [[Product alloc] init];
	item.name = name;
	item.price = price;
	item.imageName = image;
	item.productCode = productCode;
	item.detail = detail;
    
	return item;
}

- (BOOL)isEqualProduct:(NSString *)productCode {
    return [self.productCode isEqualToString:productCode];
}
@end