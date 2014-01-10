//
//  ProductDetailViewController.m
//  TableViewCustomCellEx
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 Lee HyunYoung. All rights reserved.
//

#import "ProductDetailViewController.h"
#import "Catalog.h"
#import "Product.h"

@interface ProductDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *product;
@property (weak, nonatomic) IBOutlet UITextView *details;

@end

@implementation ProductDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	Catalog *catalog = [Catalog defaultCatalog];
	Product *product = [catalog productWithCode:self.pcode];
	
	self.image.image = [UIImage imageNamed:product.imageName];
	self.name.text = product.name;
	self.product.text = [NSString stringWithFormat:@"%ld",(unsigned long)product.price];
	self.details.text = product.detail;
	
}

@end













