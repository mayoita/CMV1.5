//
//  MyLogInViewController.m
//  LogInAndSignUpDemo
//
//  Created by Mattieu Gamache-Asselin on 6/15/12.
//  Copyright (c) 2013 Parse. All rights reserved.
//

#import "MyLogInViewController.h"
#import "CMVLogInFieldsBG.h"
#import <QuartzCore/QuartzCore.h>
#import "CMVDiciottoPiu.h"
#import "CMVDiciottoPiu.h"


@interface MyLogInViewController ()
@property (nonatomic, strong) UIImageView *fieldsBackground;
@property(strong,nonatomic)UIImageView *line;
@property(strong,nonatomic)UIImageView *line2;
@property(strong,nonatomic)UILabel *divietoiPAD;
@property(strong, nonatomic)CMVLogInFieldsBG *myBG;
@property(strong,nonatomic)UIImageView *myBackgroundView;
@end

@implementation MyLogInViewController

@synthesize fieldsBackground;

- (void)viewDidLoad {
    [super viewDidLoad];
    if (iPHONE) {
        [self.logInView.passwordForgottenButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.logInView.passwordForgottenButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        [self.logInView.passwordForgottenButton setTitle:NSLocalizedString(@"FORGOT?", nil) forState:UIControlStateNormal];
        self.logInView.passwordForgottenButton.titleLabel.minimumScaleFactor=0.5;
        self.logInView.passwordForgottenButton.titleLabel.adjustsFontSizeToFitWidth=YES;
        [self.logInView.passwordForgottenButton.titleLabel setFont:GOTHAM_Medium(10)];
        
        // Set buttons appearance
        [self.logInView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateNormal];
        [self.logInView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateHighlighted];
        
        UILabel *diciotto =[[UILabel alloc] init];
        diciotto.text= @"18+";
        diciotto.textColor = [UIColor whiteColor];
        diciotto.frame=CGRectMake(27, 26, 30, 21);
        
        [self.view addSubview:diciotto];
        
        CMVDiciottoPiu *divieto =[[CMVDiciottoPiu alloc] init];
        [self.view addSubview:divieto];
        

        [self.logInView.logInButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.logInView.logInButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        [self.logInView.signUpButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.logInView.signUpButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        
        
        CMVLogInFieldsBG *fieldsBG = [[CMVLogInFieldsBG alloc] init];
        fieldsBG.backgroundColor = [UIColor clearColor];
        fieldsBG.alpha = 0.3f;
        fieldsBG.frame = CGRectMake(self.view.center.x-250/2, 160, 250, 80);
        [self.logInView addSubview:fieldsBG];
        [self.logInView sendSubviewToBack:fieldsBG];
        
        UIImageView *ombraBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground.frame = CGRectMake(self.view.center.x-300/2, 135, 300, 4);
        [self.view addSubview:ombraBackground];
        [self.view sendSubviewToBack:ombraBackground];
        
        UIImageView *ombraBackground2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground2.frame = CGRectMake(self.view.center.x-300/2, 300, 300, 4);
        self.line =ombraBackground2;
        [self.view addSubview:ombraBackground2];
        [self.view sendSubviewToBack:ombraBackground2];
        
        UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogInImage.png"]];
        backgroundImageView.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height + 20);
        [self.view addSubview:backgroundImageView];
        [self.view sendSubviewToBack: backgroundImageView];
        
        [self.logInView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CasinoLabel.png"]]];
    } else {
        self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self.logInView.passwordForgottenButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.logInView.passwordForgottenButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        [self.logInView.passwordForgottenButton setTitle:NSLocalizedString(@"FORGOT?", nil) forState:UIControlStateNormal];
        [self.logInView.passwordForgottenButton.titleLabel setFont:GOTHAM_Medium(16)];
        
        // Set buttons appearance
        [self.logInView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateNormal];
        [self.logInView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateHighlighted];
        
        UILabel *diciotto =[[UILabel alloc] init];
        diciotto.text= @"18+";
        diciotto.font = [UIFont fontWithName:@"ArialMT" size:17];
        diciotto.textColor = [UIColor whiteColor];
        diciotto.frame=CGRectMake(41, 25, 30, 21);
        [self.view addSubview:diciotto];
        
        CMVDiciottoPiu *divieto =[[CMVDiciottoPiu alloc] init];
        [self.view addSubview:divieto];
        

        [self.logInView.logInButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.logInView.logInButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        [self.logInView.signUpButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.logInView.signUpButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        
        
        CMVLogInFieldsBG *fieldsBG = [[CMVLogInFieldsBG alloc] init];
        fieldsBG.backgroundColor = [UIColor clearColor];
        fieldsBG.alpha = 0.3f;
        fieldsBG.frame = CGRectMake(134, 208, 500, 182);
        self.myBG = fieldsBG;
        [self.logInView addSubview:fieldsBG];
        [self.logInView sendSubviewToBack:fieldsBG];
        
        UIImageView *ombraBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground.frame = CGRectMake(30, 135, 700, 4);
        self.line =ombraBackground;
        [self.view addSubview:ombraBackground];
        [self.view sendSubviewToBack:ombraBackground];
        
        UIImageView *ombraBackground2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground2.frame = CGRectMake(30, 600, 700, 4);
        self.line2 =ombraBackground2;
        [self.view addSubview:ombraBackground2];
        [self.view sendSubviewToBack:ombraBackground2];
        
        UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogInImage.png"]];
        backgroundImageView.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height + 20);
        backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
        self.myBackgroundView=backgroundImageView;
        [self.view addSubview:backgroundImageView];
        [self.view sendSubviewToBack: backgroundImageView];
        
        [self.logInView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CasinoLabel.png"]]];
    }
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    UIView *defaultFieldsBackground = [[self.logInView subviews] objectAtIndex:5];
    defaultFieldsBackground.hidden=YES;
    
    self.logInView.usernameField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"USERNAME", nil) attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    self.logInView.passwordField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PASSWORD", nil) attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    [self.logInView.logInButton setBackgroundImage:[UIImage imageNamed:@"SignUpLogInBK.png"] forState:UIControlStateNormal];
    [self.logInView.signUpButton setBackgroundImage:[UIImage imageNamed:@"SignUpLogInBK.png"] forState:UIControlStateNormal];
    self.logInView.externalLogInLabel.text =NSLocalizedString(@"YOU CAN ALSO LOG WITH", nil);
    self.logInView.externalLogInLabel.adjustsFontSizeToFitWidth=YES;
    self.logInView.externalLogInLabel.minimumScaleFactor =0.5;
    self.logInView.signUpLabel.text =NSLocalizedString(@"DON'T HAVE AN ACCOUNT YET?", nil);
    self.logInView.signUpLabel.adjustsFontSizeToFitWidth=YES;
     self.logInView.signUpLabel.minimumScaleFactor =0.5;

    if (iPHONE) {
        UIImage *myGradient = [UIImage imageNamed:@"LogInColorPattern"];
        [self.logInView.logInButton setTitleColor:[UIColor colorWithPatternImage:myGradient] forState:UIControlStateNormal];
        [self.logInView.signUpButton setTitleColor:[UIColor colorWithPatternImage:myGradient] forState:UIControlStateNormal];
        self.logInView.logInButton.titleLabel.font = GOTHAM_XLight(20);
        self.logInView.signUpButton.titleLabel.font = GOTHAM_XLight(20);
        
        [self.logInView.usernameField setFrame:CGRectMake(self.view.center.x-250/2, 155.0f, 250.0f, 50.0f)];
        //[self.logInView.usernameField setCenter:CGPointMake(self.view.center.x,155.0f)];
        self.logInView.usernameField.font = GOTHAM_BOOK(14);
        self.logInView.usernameField.textColor =[UIColor whiteColor];
        [self.logInView.passwordField setFrame:CGRectMake(self.view.center.x-250/2, 196.0f, 250.0f, 50.0f)];
        self.logInView.passwordField.font = GOTHAM_BOOK(14);
        self.logInView.passwordField.textColor =[UIColor whiteColor];
        [self.logInView.logInButton setFrame:CGRectMake(self.view.center.x-250/2, 250.0f, 250.0f, 40.0f)];
        self.logInView.logInButton.layer.cornerRadius = 2;
        [self.fieldsBackground setFrame:CGRectMake(self.view.center.x-250/2, 145.0f, 250.0f, 100.0f)];;
        self.logInView.signUpLabel.font = GOTHAM_BOOK(12);
        self.logInView.externalLogInLabel.font = GOTHAM_BOOK(12);
        
        [self.logInView.passwordForgottenButton setFrame:CGRectMake(self.view.center.x-160/2, 300.0f, 160.0f, 20.0f)];
     
        if (self.logInView.bounds.size.height > 480.0f) {
            self.line.frame = CGRectOffset(self.line.frame, 0, 30);
            [self.logInView.logo setFrame:CGRectMake(self.view.center.x-270/2, 85.0f, 270.0f, 28.0f)];
            [self.logInView.facebookButton setFrame:CGRectMake(self.view.center.x-125, 383.0f, 120.0f, 40.0f)];
            [self.logInView.twitterButton setFrame:CGRectMake(self.view.center.x-125+130.0f, 383.0f, 120.0f, 40.0f)];
            [self.logInView.signUpButton setFrame:CGRectMake(self.view.center.x-250/2, 475.0f, 250.0f, 40.0f)];
            [self.logInView.externalLogInLabel setFrame:CGRectMake(self.view.center.x-245/2, 360.0f, 245.0f, 15.0f)];
            [self.logInView.signUpLabel setFrame:CGRectMake(self.view.center.x-245/2, 450.0f, 245.0f, 15.0f)];
          
        } else {

            [self.logInView.logo setFrame:CGRectMake(self.view.center.x-270/2, 85.0f, 270.0f, 28.0f)];
            [self.logInView.facebookButton setFrame:CGRectMake(self.view.center.x-125, 330.0f, 120.0f, 40.0f)];
            [self.logInView.twitterButton setFrame:CGRectMake(self.view.center.x-125+130.0f, 330.0f, 120.0f, 40.0f)];
            [self.logInView.signUpButton setFrame:CGRectMake(self.view.center.x-250/2, 420.0f, 250.0f, 40.0f)];
            [self.logInView.externalLogInLabel setFrame:CGRectMake(self.view.center.x-245/2, 310.0f, 245.0f, 15.0f)];
            [self.logInView.signUpLabel setFrame:CGRectMake(self.view.center.x-245/2, 400.0f, 245.0f, 15.0f)];
            
        }
    } else {
        //self.logInView.dismissButton.frame = CGRectMake(self.logInView.dismissButton.frame.origin.x, self.logInView.dismissButton.frame.origin.y, 35, 35);
        
        self.logInView.logInButton.titleLabel.font = GOTHAM_XLight(35);
        self.logInView.signUpButton.titleLabel.font = GOTHAM_XLight(35);
        UIImage *myGradient = [UIImage imageNamed:@"LogInColorPatterniPAD"];
    
        [self.logInView.logInButton setTitleColor:[UIColor colorWithPatternImage:myGradient] forState:UIControlStateNormal];
        [self.logInView.signUpButton setTitleColor:[UIColor colorWithPatternImage:myGradient] forState:UIControlStateNormal];
   
        if([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationLandscapeLeft || [UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationLandscapeRight)
        {
            [self.logInView.logo setFrame:CGRectMake(self.logInView.frame.size.width/2 - 225.0f, 45.0f, 450.0f, 60.0f)];
            [self.logInView.facebookButton setFrame:CGRectMake(262.0f, 530.0f, 240.0f, 60.0f)];
            [self.logInView.twitterButton setFrame:CGRectMake(520.0f, 530.0f, 240.0f, 60.0f)];
            [self.logInView.signUpButton setFrame:CGRectMake(262.0f, 680.0f, 500.0f, 60.0f)];
            [self.logInView.usernameField setFrame:CGRectMake(262.0f, 164.0f, 500.0f, 60.0f)];
            [self.logInView.passwordField setFrame:CGRectMake(262.0f, 232.0f, 500.0f, 60.0f)];
            [self.logInView.logInButton setFrame:CGRectMake(262.0f, 330.0f, 500.0f, 60.0f)];
            [self.logInView.passwordForgottenButton setFrame:CGRectMake(460.0f, 400.0f, 120.0f, 40.0f)];
            [self.logInView.externalLogInLabel setFrame:CGRectMake(262.0f, 490.0f, 500.0f, 30.0f)];
            self.logInView.externalLogInLabel.font=GOTHAM_BOOK(16);
            [self.logInView.signUpLabel setFrame:CGRectMake(262.0f, 630.0f, 500.0f, 30.0f)];
            self.logInView.signUpLabel.font=GOTHAM_BOOK(16);
            [self.myBG setFrame:CGRectMake(262.0f, 160.0f, 500.0f, 134.0f)];
            [self.line setFrame:CGRectMake(30, 135, 940, 4)];
            [self.line2 setFrame:CGRectMake(30, 450, 940, 4)];
            [self.divietoiPAD setFrame:CGRectMake(67, 33, 690, 21)];
        }
        else if([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait || [UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)
        {
   
            [self.logInView.logo setFrame:CGRectMake(self.logInView.frame.size.width/2 - 225.0f, 50.0f, 450.0f, 60.0f)];
            [self.logInView.facebookButton setFrame:CGRectMake(134.0f, 700.0f, 240.0f, 80.0f)];
            [self.logInView.twitterButton setFrame:CGRectMake(394.0f, 700.0f, 240.0f, 80.0f)];
            [self.logInView.signUpButton setFrame:CGRectMake(134.0f, 900.0f, 500.0f, 80.0f)];
            [self.logInView.usernameField setFrame:CGRectMake(134.0f, 203.0f, 500.0f, 100.0f)];
            [self.logInView.passwordField setFrame:CGRectMake(134.0f, 295.0f, 500.0f, 100.0f)];
            [self.logInView.logInButton setFrame:CGRectMake(134.0f, 420.0f, 500.0f, 80.0f)];
            [self.logInView.passwordForgottenButton setFrame:CGRectMake(319.0f, 510.0f, 150.0f, 40.0f)];
            [self.logInView.externalLogInLabel setFrame:CGRectMake(134.0f, 660.0f, 500.0f, 30.0f)];
            self.logInView.externalLogInLabel.font=GOTHAM_BOOK(16);
            [self.logInView.signUpLabel setFrame:CGRectMake(134.0f, 860.0f, 500.0f, 30.0f)];
            self.logInView.signUpLabel.font=GOTHAM_BOOK(16);
            [self.myBG setFrame:CGRectMake(134.0f, 208.0f, 500.0f, 182.0f)];
            [self.line setFrame:CGRectMake(30, 135, 700, 4)];
            [self.line2 setFrame:CGRectMake(30, 600, 700, 4)];
            [self.divietoiPAD setFrame:CGRectMake(67, 33, 690, 21)];
        }
    }
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



@end
