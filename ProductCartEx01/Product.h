//
//  Product.h
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (strong,nonatomic) NSString *name;
@property (nonatomic) NSInteger price;
@property (strong,nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *productCode;
@property (strong, nonatomic) NSString *detail;

+ (id)productWithName:(NSString *)name price:(NSInteger)price image:(NSString *)image productCode:(NSString *)productCode detail:(NSString *)detail;

- (BOOL)isEqualProduct:(NSString *)productCode;
@end