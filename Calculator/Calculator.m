//
//  Calculator.m
//  Calculator
//
//  Created by Syngmaster on 28/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (void)printResultToLabel:(UILabel *) label {
    
    label.text = [NSString stringWithFormat:@"%.10g",self.result];
    
}

- (void)resetAllDataFromLabel:(UILabel *)label {
    
    self.number = 0.f;
    self.result = 0;
    
    self.resultFlag = NO;
    self.operationFlag = NO;
    self.hasDotSign = NO;
    
    [self printResultToLabel:label];
    
}

- (void)updateLabel:(UILabel *) label withButton:(UIButton *) button {
    
    if (self.resultFlag) {
        self.result = 0;
        self.resultFlag = NO;
    }

    if (self.hasDotSign) {
        
        self.result = button.tag * self.decimal + self.result;
        self.decimal /= 10;
        
        [self printResultToLabel:label];
        
    } else {
        
        self.result = button.tag + self.result*10;
        self.decimal = 0.1;

        [self printResultToLabel:label];
        
    }
 
}

- (void)updateLabel:(UILabel *) label afterOperationWithButton:(UIButton *) button {
    
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
    }
    
    if (button.tag == CalculatorOperationEquals) {
        
        self.operationFlag = NO;
        
    } else {
        
        self.number = self.result;
        self.resultFlag = YES;
        self.operationFlag = YES;
        self.operation = button.tag;
        
    }
    
    [self printResultToLabel:label];


}

- (void)addOrRemoveNegativeSignToLabel:(UILabel *) label {
    
    if (self.result > 0) {
        
        self.result = 0 - self.result;
        [self printResultToLabel:label];
        
    } else {
        
        self.result = - self.result;
        [self printResultToLabel:label];
        
    }
    
    if (self.result == 0) {
        
        self.result = self.result - self.result;
        [self printResultToLabel:label];
        
    }
    
}

- (void)deleteLastDigitFromLabel:(UILabel *) label {
    
    if (!self.hasDotSign) {
        
        self.result = (int)self.result/10;
        
        [self printResultToLabel:label];
        
    }

}

- (void)addDotSignToLabel:(UILabel *) label {
    
    if (!self.hasDotSign) {

        label.text = [NSString stringWithFormat:@"%.10g.",self.result];
        
        self.hasDotSign = YES;
    
    }

}



@end
