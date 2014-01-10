//
//  CartCell.m
//  TableViewCustomCell
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "CartCell.h"


@interface CartCell()

@property (weak, nonatomic) IBOutlet UILabel *cartItemName;
@property (weak, nonatomic) IBOutlet UILabel *cartItemQuantity;

@property (copy, nonatomic) NSString *productCode;
@end

@implementation CartCell

- (IBAction)plusClicked:(id)sender {
    [self.delegate incQuantity:self.productCode];
}

- (IBAction)minusClicked:(id)sender {
    [self.delegate decQuantity:self.productCode];
}


- (void)setCartItem:(CartItem *)item {

    self.productCode = item.product.productCode;
    
    self.cartItemName.text = item.product.name;
    self.cartItemQuantity.text = [NSString stringWithFormat:@"%d개", (int)item.quantity];
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end





















