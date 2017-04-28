//
//  Calculator.h
//  Calculator
//
//  Created by Syngmaster on 28/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CalculatorOperation) {
    
    CalculatorOperationAdd = 10,
    CalculatorOperationSubtract,
    CalculatorOperationMultiply,
    CalculatorOperationDivide,
    CalculatorOperationEquals
    
};

@interface Calculator : NSObject

@property (assign, nonatomic) CGFloat number;
@property (assign, nonatomic) CGFloat result;
@property (assign, nonatomic) CGFloat decimal;

@property (assign, nonatomic) BOOL operationFlag;
@property (assign, nonatomic) BOOL resultFlag;
@property (assign, nonatomic) BOOL hasDotSign;

@property (assign, nonatomic) NSInteger operation;

- (void)printResultToLabel:(UILabel *) label;
- (void)resetAllDataFromLabel:(UILabel *) label;
- (void)updateLabel:(UILabel *) label withButton:(UIButton *) button;
- (void)updateLabel:(UILabel *) label afterOperationWithButton:(UIButton *) button;
- (void)addOrRemoveNegativeSignToLabel:(UILabel *) label;
- (void)deleteLastDigitFromLabel:(UILabel *) label;
- (void)addDotSignToLabel:(UILabel *) label;

@end
