//
//  Printer.h
//  WordPrinter
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrinterDelegate.h"

@interface Printer : NSObject

/*
 STEP B: ADD A WEAK DELEGATE PROPERTY TO YOUR DELEGATOR. 
 */

@property (nonatomic, weak) id<PrinterDelegate> delegate;

-(void)printWord:(NSString *)text;

@end
