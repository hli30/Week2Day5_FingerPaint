//
//  DrawingView.h
//  FingerPaint
//
//  Created by Harry Li on 2017-06-09.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingView : UIView

- (void)moveToPoint:(CGPoint)point;
- (void)connectPoint:(CGPoint)point;

@end
