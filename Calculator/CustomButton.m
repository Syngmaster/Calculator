//
//  CustomButton.m
//  Calculator
//
//  Created by Syngmaster on 25/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    self.layer.borderWidth = 2.0;
    self.layer.borderColor = [UIColor blackColor].CGColor;
    self.layer.cornerRadius = 10;
    

    NSDictionary* attributesNormal = @{NSFontAttributeName: [UIFont systemFontOfSize:40],
                                  NSForegroundColorAttributeName: [UIColor whiteColor]};
    
    NSAttributedString* titleNormal = [[NSAttributedString alloc] initWithString:self.currentTitle attributes:attributesNormal];
    [self setAttributedTitle:titleNormal forState:UIControlStateNormal];
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowOffset = CGSizeMake(1.f, 1.f);
    shadow.shadowColor = [UIColor  grayColor];
    shadow.shadowBlurRadius = 2.0;
    
    NSDictionary* attributesPressed = @{NSFontAttributeName: [UIFont systemFontOfSize:35],
                                        NSForegroundColorAttributeName: [UIColor whiteColor],NSShadowAttributeName : shadow};
    
    NSAttributedString* titlePressed = [[NSAttributedString alloc] initWithString:self.currentTitle attributes:attributesPressed];
    self.clipsToBounds = YES;
    [self setBackgroundImage:[UIImage imageNamed:@"buttonImage.jpg"] forState:UIControlStateNormal];
    [self setAttributedTitle:titlePressed forState:UIControlStateHighlighted];
    
}


@end
