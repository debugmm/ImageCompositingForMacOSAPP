//
//  NSImage+NSImageTint.h
//
//  Created by wjg on 22/12/2016.
//  Copyright © 2016 wjg. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSImage (NSImageTint)


/**
 @Description   tint image

 @param tintColor tintColor
 @return return value tinted image
 */
-(NSImage *)imageWithTintColor:(NSColor *)tintColor;

@end
