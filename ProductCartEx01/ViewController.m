//
//  ViewController.m
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "ProductCell.h"
#import "Catalog.h"
#import "Cart.h"
#import "CartCell.h"
#import "ProductDetailViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, CartDelegate>
@property (weak, nonatomic) IBOutlet UINavigationItem *navi;


@property (weak, nonatomic) IBOutlet UITableView *table;
@property (strong, nonatomic) Cart *cart;
@end

@implementation ViewController

- (void)incQuantity:(NSString *)productCode {
    [self.cart incQuantity:productCode];
    [self reloadCartSection];
}

- (void)decQuantity:(NSString *)productCode {
    [self.cart decQuantity:productCode];
    [self reloadCartSection];
}

- (void)addItem:(id)sender {
	
    NSIndexPath *indexPath = [self.table indexPathForCell:sender];
    Product *product = [[Catalog defaultCatalog] productAt:(int)indexPath.row];
    
	
    if (![self.cart cartItemWith:product.productCode]) {
		
        [self.cart addProduct:product];
    }else {
		
        [self.cart incQuantity:product.productCode];
    }
    [self reloadCartSection];
}

- (void)reloadCartSection {
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:1];
    [self.table reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (0 == section) {
        return [[Catalog defaultCatalog] numberOfProducts];
    }else {
        return [self.cart.items count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
    if (0 == indexPath.section) {
        ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL" forIndexPath:indexPath];
		
        cell.delegate = self;
        Product *product = [[Catalog defaultCatalog] productAt:(int)indexPath.row];
        [cell setProductInfo:product];
        return cell;
    }else {
		
        CartCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CART_CELL" forIndexPath:indexPath];
        cell.delegate = self;
        CartItem *cartItem = self.cart.items[indexPath.row];
        
        [cell setCartItem:cartItem];
        return cell;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (0 == section) {
        return @"Product";
    }else {
        return @"Items in Cart";
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.cart = [[Cart alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	ProductDetailViewController *pdvc = segue.destinationViewController;
	
	NSIndexPath *indexPath = [self.table indexPathForCell:sender];
	Product *tmp = [[Catalog defaultCatalog] productAt:indexPath.row];
	
	pdvc.pcode = tmp.productCode;
}


@end


























