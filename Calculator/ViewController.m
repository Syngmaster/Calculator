//
//  ViewController.m
//  Calculator
//
//  Created by Syngmaster on 25/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"

typedef NS_ENUM(NSInteger, CalculatorOperation) {
    
    CalculatorOperationAdd = 10,
    CalculatorOperationSubtract,
    CalculatorOperationMultiply,
    CalculatorOperationDivide
    
};

@interface ViewController ()

@property (assign, nonatomic) CGFloat number;

@property (assign, nonatomic) CGFloat result;

@property (assign, nonatomic) BOOL operationFlag;
@property (assign, nonatomic) BOOL resultFlag;
@property (assign, nonatomic) NSInteger operation;


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


- (void)printResult {


    self.resultLabel.text = [NSString stringWithFormat:@"%.1f",self.result];
    
}

- (IBAction)buttonPressed:(UIButton *)sender {
    
    if (self.resultFlag) {
        //self.number = self.result;
        self.result = 0;
        self.resultFlag = NO;
    }
    
    self.result = sender.tag + self.result*10;
    [self printResult];

}

- (IBAction)equalButton:(UIButton *)sender {
    
    if (self.operationFlag && !self.resultFlag) {
        
        switch (self.operation) {
            case CalculatorOperationAdd:
                self.result = self.number + self.result;
                break;
            case CalculatorOperationSubtract:
                self.result = self.number - self.result;
                break;
            case CalculatorOperationMultiply:
                self.result = self.number * self.result;
                break;
            case CalculatorOperationDivide:
                self.result = self.number / self.result;
                break;
                
        }
        [self printResult];
        self.operationFlag = NO;
    }
}

- (IBAction)operationButton:(UIButton *)sender {
    
    if (self.operationFlag && !self.resultFlag) {
        
        switch (self.operation) {
            case CalculatorOperationAdd:
                self.result = self.number + self.result;
                break;
            case CalculatorOperationSubtract:
                self.result = self.number - self.result;
                break;
            case CalculatorOperationMultiply:
                self.result = self.number * self.result;
                break;
            case CalculatorOperationDivide:
                self.result = self.number / self.result;
                break;

        }
        [self printResult];

    }
    self.number = self.result;

    self.resultFlag = YES;
    self.operationFlag = YES;
    self.operation = sender.tag;
}

- (IBAction)clearButton:(UIButton *)sender {
    
    self.number = 0.f;
    self.result = 0;
    
    self.resultFlag = NO;
    self.operationFlag = NO;
    
    [self printResult];

    
}

- (IBAction)negativeSignButton:(UIButton *)sender {
    
    if (self.result > 0) {
        
        self.result = 0 - self.result;
        [self printResult];
        
    } else {
        
        self.result = - self.result;
        [self printResult];

    }
    
    if (self.result == 0) {
        
        self.result = self.result - self.result;
        [self printResult];

    }
    
}

- (IBAction)percentButton:(UIButton *)sender {
    
    self.result = 0.01 * self.result;
    [self printResult];
    
    
}


@end
