//
//  Printer.m
//  WordPrinter
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Printer.h"

@implementation Printer

-(void)printWord:(NSString *)text {
    /*
     STEP C: FROM YOUR DELEGATOR, SEND MESSAGES TO YOUR DELEGATE.
     */
    int n = [self.delegate printer:self numberOfTimesToPrint:text];
    for(int i = 0; i < n; i++) {
        NSLog(@"%@", [self makeUpperCase:[self addStarTo:text]]);
    }
}

-(NSString *)addStarTo:(NSString *)text {
    if ([self.delegate printer:self shouldAddStarTo:text]) {
        NSString *star = @"*";
        NSString *starredText = [[star stringByAppendingString:text] stringByAppendingString:star];
        return starredText;
    } else {
        return text;
    }
}

-(NSString *)makeUpperCase:(NSString *)text {
    if ([self.delegate printer:self shouldMakeUpperCase:text]) {
        return [text uppercaseString];
    } else {
        return text;
    }
}

@end
