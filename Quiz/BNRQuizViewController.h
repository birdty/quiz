//
//  BNRQuizViewController.h
//  Quiz
//
//  Created by Tyler Bird on 2/17/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRQuizViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel * questionLabel;
@property (nonatomic, weak) IBOutlet UILabel * answerLabel;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray * questions;
@property (nonatomic, copy) NSArray * answers;


@end
