//
//  ViewController.h
//  Calculator
//
//  Created by Syngmaster on 25/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomButton;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)buttonPressed:(UIButton *)sender;
- (IBAction)equalButton:(UIButton *)sender;
- (IBAction)operationButton:(UIButton *)sender;
- (IBAction)clearButton:(UIButton *)sender;
- (IBAction)negativeSignButton:(UIButton *)sender;
- (IBAction)percentButton:(UIButton *)sender;

@end

