//
//  MySignUpViewController.m
//  LogInAndSignUpDemo
//
//  Created by Mattieu Gamache-Asselin on 6/15/12.
//  Copyright (c) 2013 Parse. All rights reserved.
//

#import "MySignUpViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CMVLogInFieldsBGThree.h"
#import "CMVDiciottoPiu.h"


@interface MySignUpViewController ()
@property (nonatomic, strong) UIImageView *fieldsBackground;
@property(strong,nonatomic)UIImageView *line;
@property(strong,nonatomic)UIImageView *line2;
@property(strong,nonatomic)UILabel *divietoiPAD;
@property(strong, nonatomic)CMVLogInFieldsBGThree *myBG;
@end

@implementation MySignUpViewController

@synthesize fieldsBackground;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (iPHONE ) {
        UILabel *diciotto =[[UILabel alloc] init];
        diciotto.text= @"18+";
        diciotto.textColor = [UIColor whiteColor];
        diciotto.frame=CGRectMake(27, 26, 30, 21);
        [self.view addSubview:diciotto];
        
        CMVDiciottoPiu *divieto =[[CMVDiciottoPiu alloc] init];
        [self.view addSubview:divieto];
        
        [self.signUpView.signUpButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.signUpView.signUpButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        [self.signUpView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateNormal];
        [self.signUpView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateHighlighted];
        
        UIImage *myGradient = [UIImage imageNamed:@"LogInColorPattern"];
        [self.signUpView.signUpButton setTitleColor:[UIColor colorWithPatternImage:myGradient] forState:UIControlStateNormal];
        
        CMVLogInFieldsBGThree *fieldsBG = [[CMVLogInFieldsBGThree alloc] init];
        fieldsBG.backgroundColor = [UIColor clearColor];
        fieldsBG.alpha = 0.3f;
        fieldsBG.frame = CGRectMake(self.view.center.x-250/2, 160, 250, 118);
        [self.signUpView addSubview:fieldsBG];
        [self.signUpView sendSubviewToBack:fieldsBG];
        
        UIImageView *ombraBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground.frame = CGRectMake(self.view.center.x-300/2, 135, 300, 4);
        [self.view addSubview:ombraBackground];
        [self.view sendSubviewToBack:ombraBackground];
        
        UIImageView *ombraBackground2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground2.frame = CGRectMake(self.view.center.x-300/2, 300, 300, 4);
        [self.view addSubview:ombraBackground2];
        [self.view sendSubviewToBack:ombraBackground2];
        
        UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogInImage.png"]];
        backgroundImageView.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height + 20);
        [self.view addSubview:backgroundImageView];
        [self.view sendSubviewToBack: backgroundImageView];
        [self.signUpView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CasinoLabel.png"]]];
    } else {
        self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        UILabel *diciotto =[[UILabel alloc] init];
        diciotto.text= @"18+";
        diciotto.font = [UIFont fontWithName:@"ArialMT" size:17];
        diciotto.textColor = [UIColor whiteColor];
        diciotto.frame=CGRectMake(41, 25, 30, 21);
        [self.view addSubview:diciotto];
        
        CMVDiciottoPiu *divieto =[[CMVDiciottoPiu alloc] init];
        [self.view addSubview:divieto];
        
        [self.signUpView.signUpButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.signUpView.signUpButton setBackgroundImage:nil forState:UIControlStateHighlighted];
        [self.signUpView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateNormal];
        [self.signUpView.dismissButton setImage:[UIImage imageNamed:@"CloseButtonRaster.png"] forState:UIControlStateHighlighted];
        
        UIImage *myGradient = [UIImage imageNamed:@"LogInColorPatterniPAD"];
        [self.signUpView.signUpButton setTitleColor:[UIColor colorWithPatternImage:myGradient] forState:UIControlStateNormal];
        
        CMVLogInFieldsBGThree *fieldsBG = [[CMVLogInFieldsBGThree alloc] init];
        fieldsBG.backgroundColor = [UIColor clearColor];
        fieldsBG.alpha = 0.3f;
        fieldsBG.frame = CGRectMake(35, 160, 250, 118);
        self.myBG = fieldsBG;
        [self.signUpView addSubview:fieldsBG];
        [self.signUpView sendSubviewToBack:fieldsBG];
        
        UIImageView *ombraBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground.frame = CGRectMake(10, 135, 300, 4);
        self.line =ombraBackground;
        [self.view addSubview:ombraBackground];
        [self.view sendSubviewToBack:ombraBackground];
        
        UIImageView *ombraBackground2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ombra.png"]];
        ombraBackground2.frame = CGRectMake(10, 300, 300, 4);
        self.line2 =ombraBackground2;
        [self.view addSubview:ombraBackground2];
        [self.view sendSubviewToBack:ombraBackground2];
        
        UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogInImage.png"]];
        backgroundImageView.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height + 20);
        backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
        [self.view addSubview:backgroundImageView];
        [self.view sendSubviewToBack: backgroundImageView];
        
        [self.signUpView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CasinoLabel.png"]]];
    }
    

}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    UIView *defaultFieldsBackground = [[self.signUpView subviews] objectAtIndex:4];
    defaultFieldsBackground.hidden=YES;
    [self.signUpView.signUpButton setBackgroundImage:[UIImage imageNamed:@"SignUpLogInBK.png"] forState:UIControlStateNormal];
    if (iPHONE) {
       self.signUpView.signUpButton.titleLabel.font = GOTHAM_XLight(20);
        
        [self.signUpView.usernameField setFrame:CGRectMake(self.view.center.x-250/2, 155.0f, 250.0f, 50.0f)];
        self.signUpView.usernameField.font = GOTHAM_BOOK(12);
        self.signUpView.usernameField.textColor =[UIColor whiteColor];
        self.signUpView.usernameField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"USERNAME", nil) attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
        [self.signUpView.passwordField setFrame:CGRectMake(self.view.center.x-250/2, 196.0f, 250.0f, 50.0f)];
        self.signUpView.passwordField.font = GOTHAM_BOOK(12);
        self.signUpView.passwordField.textColor =[UIColor whiteColor];
        self.signUpView.passwordField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PASSWORD", nil) attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
        [self.signUpView.emailField setFrame:CGRectMake(self.view.center.x-250/2, 236.0f, 250.0f, 50.0f)];
        self.signUpView.emailField.font = GOTHAM_BOOK(12);
        self.signUpView.emailField.textColor =[UIColor whiteColor];
        self.signUpView.emailField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"EMAIL", nil) attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
       
        [self.fieldsBackground setFrame:CGRectMake(self.view.center.x-250/2, 145.0f, 250.0f, 100.0f)];
 
        

        
        if (self.signUpView.bounds.size.height > 480.0f) {
         //   self.line.frame = CGRectOffset(self.line.frame, 0, 30);
            [self.signUpView.logo setFrame:CGRectMake(self.view.center.x-270/2, 85.0f, 270.0f, 28.0f)];
           
            [self.signUpView.signUpButton setFrame:CGRectMake(self.view.center.x-250/2, 475.0f, 250.0f, 40.0f)];
        
        
        } else {
            
            self.signUpView.signUpButton.titleLabel.font = GOTHAM_XLight(35);
            //self.signUpView.dismissButton.frame = CGRectMake(self.signUpView.dismissButton.frame.origin.x, self.signUpView.dismissButton.frame.origin.y, 35, 35);
            [self.signUpView.logo setFrame:CGRectMake(self.view.center.x-270/2, 85.0f, 270.0f, 28.0f)];
        }
    } else {
    
            if([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationLandscapeLeft || [UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationLandscapeRight)
            {
             
                [self.signUpView.logo setFrame:CGRectMake(self.signUpView.frame.size.width/2 - 225.0f, 45.0f, 450.0f, 60.0f)];
                [self.signUpView.signUpButton setFrame:CGRectMake(262.0f, 680.0f, 500.0f, 60.0f)];
                [self.signUpView.usernameField setFrame:CGRectMake(262.0f, 164.0f, 500.0f, 60.0f)];
                [self.signUpView.passwordField setFrame:CGRectMake(262.0f, 232.0f, 500.0f, 60.0f)];
                [self.signUpView.emailField setFrame:CGRectMake(262.0f, 300.0f, 500.0f, 60.0f)];

                [self.myBG setFrame:CGRectMake(262.0f, 160.0f, 500.0f, 200.0f)];
                [self.line setFrame:CGRectMake(30, 135, 940, 4)];
                [self.line2 setFrame:CGRectMake(30, 450, 940, 4)];
                [self.divietoiPAD setFrame:CGRectMake(67, 33, 690, 21)];
            }
            else if([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait || [UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)
            {
                
                [self.signUpView.logo setFrame:CGRectMake(self.signUpView.frame.size.width/2 - 225.0f, 50.0f, 450.0f, 60.0f)];
                [self.signUpView.signUpButton setFrame:CGRectMake(134.0f, 900.0f, 500.0f, 80.0f)];
                [self.signUpView.usernameField setFrame:CGRectMake(134.0f, 203.0f, 500.0f, 100.0f)];
                [self.signUpView.passwordField setFrame:CGRectMake(134.0f, 315.0f, 500.0f, 100.0f)];
                [self.signUpView.emailField setFrame:CGRectMake(134.0f, 424.0f, 500.0f, 100.0f)];

                [self.myBG setFrame:CGRectMake(134.0f, 208.0f, 500.0f, 316.0f)];
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
