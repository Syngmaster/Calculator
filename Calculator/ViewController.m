//
//  ViewController.m
//  Calculator
//
//  Created by Syngmaster on 25/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
#import "Calculator.h"

@interface ViewController ()

@property (strong, nonatomic) Calculator *currentCalculator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.currentCalculator = [[Calculator alloc] init];
    
}


- (IBAction)buttonPressed:(UIButton *)sender {
    
    [self.currentCalculator updateLabel:self.resultLabel withButton:sender];

}

- (IBAction)equalButton:(UIButton *)sender {
    
    [self.currentCalculator updateLabel:self.resultLabel afterOperationWithButton:sender];

}

- (IBAction)operationButton:(UIButton *)sender {
    
    [self.currentCalculator updateLabel:self.resultLabel afterOperationWithButton:sender];

}

- (IBAction)clearButton:(UIButton *)sender {
    
    [self.currentCalculator resetAllDataFromLabel:self.resultLabel];
    
}

- (IBAction)negativeSignButton:(UIButton *)sender {
    
    [self.currentCalculator addOrRemoveNegativeSignToLabel:self.resultLabel];
    
}

- (IBAction)deleteLastDigitButton:(UIButton *)sender {
    
    [self.currentCalculator deleteLastDigitFromLabel:self.resultLabel];
    
}

- (IBAction)dotSignButton:(UIButton *)sender {
    
    [self.currentCalculator addDotSignToLabel:self.resultLabel];
}



@end
