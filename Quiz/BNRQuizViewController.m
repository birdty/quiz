//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Tyler Bird on 2/17/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@end

@implementation BNRQuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if ( self )
    {
        self.currentQuestionIndex = 0;
        
        self.questions = @[@"From what is cognac made?", @"What is 7+7?", @"What is the capital of vermont?"];
        
        self.answers = @[@"Grapes", @"14", @"Montpelier"];
    }
    
    return self;
}

-(IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    
    NSLog(@"show question");
    
    if ( self.currentQuestionIndex == self.questions.count )
    {
        self.currentQuestionIndex = 0;
    }
    
    NSString * question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
}

-(IBAction)showAnswer:(id)sender
{
    NSString * answer = self.answers[self.currentQuestionIndex];

    NSLog(@"show question");

    self.answerLabel.text = answer;
}

@end
