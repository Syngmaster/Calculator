//
//  CustomLabel.m
//  Calculator
//
//  Created by Syngmaster on 28/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "CustomLabel.h"

@implementation CustomLabel

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    self.layer.shadowOffset = CGSizeMake(2.f, 2.f);
    self.layer.shadowColor = [UIColor brownColor].CGColor;
    self.layer.shadowRadius = 1.f;
    self.layer.shadowOpacity = 0.7;
    
    
    UIFont *labelFont;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        
        labelFont = [UIFont fontWithName:@"Avenir" size:45];
        
        
    } else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        
        labelFont = [UIFont fontWithName:@"Avenir" size:75];
        
    }
    
    self.font = labelFont;
    
}

@end
