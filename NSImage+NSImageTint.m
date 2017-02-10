//
//  NSImage+NSImageTint.m
//
//  Created by wjg on 22/12/2016.
//  Copyright © 2016 wjg. All rights reserved.
//

#import "NSImage+NSImageTint.h"

@implementation NSImage (NSImageTint)

-(NSImage *)imageWithTintColor:(NSColor *)tintColor{
    
    [self lockFocus];
    
    CGRect bounds=CGRectMake(0, 0, self.size.width, self.size.height);
    
    [tintColor setFill];
    
    CGContextRef context=[NSGraphicsContext currentContext].CGContext;
    CGContextFillRect(context, bounds);
    
    /** 
     *  @discussion the key parameter: operation.
     *              you should understand operation parameter.
     */
    [self drawInRect:bounds fromRect:bounds operation:NSCompositingOperationOverlay fraction:1.0];//NSCompositingOperationOverlay
    [self drawInRect:bounds fromRect:bounds operation:NSCompositingOperationDestinationIn fraction:1.0];//NSCompositingOperationDestinationIn
    
    [self unlockFocus];
    
    return self;
}

@end
