//
//  ViewController.m
//  FingerPaint
//
//  Created by Harry Li on 2017-06-09.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "DrawingView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DrawingView *drawingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(draw:)];
    [self.drawingView addGestureRecognizer:panGesture];
}

-(void)draw:(UIPanGestureRecognizer *)sender{
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:{
            CGPoint start = [sender locationInView:self.view];
            [self.drawingView moveToPoint:start];
            break;
        }
        case UIGestureRecognizerStateChanged:{
            CGPoint changed = [sender locationInView:self.view];
            [self.drawingView connectPoint:changed];
            break;
        }
        case UIGestureRecognizerStateEnded:{
            CGPoint ended = [sender locationInView:self.view];
            [self.drawingView moveToPoint:ended];
            break;
        }
        default:
            break;
    }
}

@end
