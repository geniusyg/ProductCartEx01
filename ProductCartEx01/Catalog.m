//
//  Catalog.m
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Catalog.h"

@implementation Catalog {
    NSArray *_data;
}


static Catalog *_instance = nil;

+ (id)defaultCatalog {
    if (nil == _instance) {
        _instance = [[Catalog alloc] init];
    }
    return _instance;
}

- (id)init {
    self = [super init];
    if (self) {
        _data = @[[Product productWithName:@"ball1" price:100 image:@"ball1.png" productCode:@"0" detail:@"야\n구\n공\n입\n니\n다\n."],
                  [Product productWithName:@"ball2" price:200 image:@"ball2.png" productCode:@"1" detail:@"볼\n링\n공\n입\n니\n다\n."],
                  [Product productWithName:@"ball3" price:300 image:@"ball3.png" productCode:@"2" detail:@"테\n니\n스\n공\n입\n니\n다\n."],
                  [Product productWithName:@"IU" price:1000 image:@"002.jpg" productCode:@"3" detail:@"아\n이\n유\n입\n니\n다\n."]];
    }
    return self;
}

- (id)productAt:(NSInteger)index {
    return [_data objectAtIndex:index];
}

- (NSInteger)numberOfProducts {
    return [_data count];
}

- (Product *)productWithCode:(NSString *)productCode {
	for(Product *one in _data){
		if([one isEqualProduct:productCode]) {
			return one;
		}
	}
	return nil;
}

@end









