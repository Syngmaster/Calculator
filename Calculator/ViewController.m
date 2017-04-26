//
//  ViewController.m
//  Calculator
//
//  Created by Syngmaster on 25/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"

@interface ViewController ()

@property (assign, nonatomic) CGFloat number;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(UIButton *)sender {
    
    self.number = sender.tag + self.number*10;
    self.resultLabel.text = [NSString stringWithFormat:@"%ld",(long)self.number];
    
}

- (IBAction)equalButton:(UIButton *)sender {
    
    
}

- (IBAction)operationButton:(UIButton *)sender {
    
    
}

- (IBAction)clearButton:(UIButton *)sender {
    
    self.resultLabel.text = @"0";
    self.number = 0.f;
    
}

- (IBAction)negativeSignButton:(UIButton *)sender {
}

- (IBAction)percentButton:(UIButton *)sender {
}


@end
