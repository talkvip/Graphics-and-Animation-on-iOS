//
//  GraphicsViewControllerView.m
//  Main Project
//
//  Created by Vandad Nahavandipoor on 11-03-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GraphicsViewControllerView.h"

@implementation GraphicsViewControllerView

- (id)initWithFrame:(CGRect)frame{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
  }
  return self;
}

//- (void)drawRect:(CGRect)rect{
//  // Drawing code
//  
//  /* Create the path first. Just the path handle. */
//  CGMutablePathRef path = CGPathCreateMutable();
//  
//  /* Here is our rectangle boudnaries */
//  CGRect rectangle = CGRectMake(10.0f,
//                                10.0f, 
//                                200.0f, 
//                                300.0f);
//  
//  /* Add the rectangle to the path */
//  CGPathAddRect(path, 
//                NULL,
//                rectangle);
//  
//  /* Get the handle to the current context */
//  CGContextRef currentContext = 
//    UIGraphicsGetCurrentContext();
//  
//  /* Add the path to the context */
//  CGContextAddPath(currentContext,
//                   path);
//  
//  /* Set the fill color to cornflower blue */
//  [[UIColor colorWithRed:0.20f
//                   green:0.60f
//                    blue:0.80f
//                   alpha:1.0f] setFill];
//  
//  /* Set the stroke color to brown */
//  [[UIColor brownColor] setStroke];
//  
//  /* Set the line width (for the stroke) to 5 */
//  CGContextSetLineWidth(currentContext, 
//                        5.0f);
//  
//  /* Stroke and fill the path on the context */
//  CGContextDrawPath(currentContext,
//                    kCGPathFillStroke);
//  
//  /* Dispose of the path */
//  CGPathRelease(path);
//  
//}

- (void)drawRect:(CGRect)rect{
  // Drawing code
  
  /* Create the path first. Just the path handle. */
  CGMutablePathRef path = CGPathCreateMutable();
  
  /* Here is our first rectangle boudnaries */
  CGRect rectangle1 = CGRectMake(10.0f,
                                10.0f, 
                                200.0f, 
                                300.0f);
  
  /* And the second rectangle */
  CGRect rectangle2 = CGRectMake(40.0f,
                                 100.0f,
                                 90.0f, 
                                 300.0f);
  
  /* Put both rectangles into an array */
  CGRect rectangles[2] = {
    rectangle1, rectangle2
  };
  
  /* Add the rectangles to the path */
  CGPathAddRects(path,
                 NULL,
                 (const CGRect *)&rectangles,
                 2);
  
  /* Get the handle to the current context */
  CGContextRef currentContext = 
  UIGraphicsGetCurrentContext();
  
  /* Add the path to the context */
  CGContextAddPath(currentContext,
                   path);
  
  /* Set the fill color to cornflower blue */
  [[UIColor colorWithRed:0.20f
                   green:0.60f
                    blue:0.80f
                   alpha:1.0f] setFill];
  
  /* Set the stroke color to black */
  [[UIColor blackColor] setStroke];
  
  /* Set the line width (for the stroke) to 5 */
  CGContextSetLineWidth(currentContext, 
                        5.0f);
  
  /* Stroke and fill the path on the context */
  CGContextDrawPath(currentContext,
                    kCGPathFillStroke);
  
  /* Dispose of the path */
  CGPathRelease(path);
  
}



- (void)dealloc{
  [super dealloc];
}

@end
