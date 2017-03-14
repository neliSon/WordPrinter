//
//  main.m
//  WordPrinter
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "Controller.h"
#import "WonkyController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Printer *printer = [[Printer alloc] init];
        Controller *controller = [[Controller alloc] init];
        WonkyController *wonkController = [[WonkyController alloc] init];
        
        /*
         STEP F: CONNECT YOUR DELEGATOR AND DELEGATE TOGETHER.
         */
        printer.delegate = controller;
//        printer.delegate = wonkController;
        
        [printer printWord:@"Hey"];
        [printer printWord:@"?Hey"];
        [printer printWord:@"Another time"];
    }
    return 0;
}
