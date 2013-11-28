//
//  GameViewController.m
//  SpaceInvaders
//
//  Created by Attila Csala on 11/23/13.
//  Copyright (c) 2013 Attila Csala. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

-(void)MonsterKilled{
    
    MonstersKilled++;
    BulletsOnScreen = 0;
    Bullet.hidden = YES;
    BulletMovement = 0;
    
    // move Bullet out of the way
    Bullet.center = CGPointMake(200, 564);
    
    
}

-(void)Collision{
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster1.frame)) && (Monster1Hit == NO)) {
        
        Monster1Hit = YES;
        Monster1.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster2.frame)) && (Monster2Hit == NO)) {
        
        Monster2Hit = YES;
        Monster2.hidden = YES;
        [self MonsterKilled];
        
    }

    if ((CGRectIntersectsRect(Bullet.frame, Monster3.frame)) && (Monster3Hit == NO)) {
        
        Monster3Hit = YES;
        Monster3.hidden = YES;
        [self MonsterKilled];
        
    }

    if ((CGRectIntersectsRect(Bullet.frame, Monster4.frame)) && (Monster4Hit == NO)) {
        
        Monster4Hit = YES;
        Monster4.hidden = YES;
        [self MonsterKilled];
        
    }

    if ((CGRectIntersectsRect(Bullet.frame, Monster5.frame)) && (Monster5Hit == NO)) {
        
        Monster5Hit = YES;
        Monster5.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster6.frame)) && (Monster6Hit == NO)) {
        
        Monster6Hit = YES;
        Monster6.hidden = YES;
        [self MonsterKilled];
        
    }

    if ((CGRectIntersectsRect(Bullet.frame, Monster7.frame)) && (Monster7Hit == NO)) {
        
        Monster7Hit = YES;
        Monster7.hidden = YES;
        [self MonsterKilled];
        
    }

    if ((CGRectIntersectsRect(Bullet.frame, Monster8.frame)) && (Monster8Hit == NO)) {
        
        Monster8Hit = YES;
        Monster8.hidden = YES;
        [self MonsterKilled];
        
    }

    if ((CGRectIntersectsRect(Bullet.frame, Monster9.frame)) && (Monster9Hit == NO)) {
        
        Monster9Hit = YES;
        Monster9.hidden = YES;
        [self MonsterKilled];
        
    }

    if ((CGRectIntersectsRect(Bullet.frame, Monster10.frame)) && (Monster10Hit == NO)) {
        
        Monster10Hit = YES;
        Monster10.hidden = YES;
        [self MonsterKilled];
        
    }


    
}

-(IBAction)Shoot:(id)sender{
    
    if (BulletsOnScreen == 0) {
        Bullet.hidden = NO;
    
        Bullet.center = CGPointMake(Ship.center.x, 390);
        BulletsOnScreen = BulletsOnScreen + 1;
        BulletMovement = 7;
        
    }
    
}

// method to move the ship
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    
    if (point.x < Ship.center.x) {
        ShipMovement = -7;
    }else{
        
        ShipMovement = 7;
    }
    
}

// if finished touching the screen the ship doesnt move
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    ShipMovement = 0;
}

-(void)Movement{
    
    // execute Collision
    [self Collision];
    
    // move the ship
    Ship.center = CGPointMake(Ship.center.x + ShipMovement, Ship.center.y);
    
    Bullet.center = CGPointMake(Bullet.center.x, Bullet.center.y - BulletMovement);
    
    Monster1.center = CGPointMake(Monster1.center.x + MonsterMovement, Monster1.center.y);
    Monster2.center = CGPointMake(Monster2.center.x + MonsterMovement, Monster2.center.y);
    Monster3.center = CGPointMake(Monster3.center.x + MonsterMovement, Monster3.center.y);
    Monster4.center = CGPointMake(Monster4.center.x + MonsterMovement, Monster4.center.y);
    Monster5.center = CGPointMake(Monster5.center.x + MonsterMovement, Monster5.center.y);
    Monster6.center = CGPointMake(Monster6.center.x + MonsterMovement, Monster6.center.y);
    Monster7.center = CGPointMake(Monster7.center.x + MonsterMovement, Monster7.center.y);
    Monster8.center = CGPointMake(Monster8.center.x + MonsterMovement, Monster8.center.y);
    Monster9.center = CGPointMake(Monster9.center.x + MonsterMovement, Monster9.center.y);
    Monster10.center = CGPointMake(Monster10.center.x + MonsterMovement, Monster10.center.y);
    
    
    
    if (Bullet.center.y < 0) {
        Bullet.hidden = YES;
        BulletsOnScreen = 0;
        BulletMovement = 0;
    }
    
    if ((Monster1.center.x < LeftSide) && (Monster1Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];

    }else if((Monster2.center.x < LeftSide) && (Monster2Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster3.center.x < LeftSide) && (Monster3Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster4.center.x < LeftSide) && (Monster4Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster5.center.x < LeftSide) && (Monster5Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster6.center.x < LeftSide) && (Monster6Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster7.center.x < LeftSide) && (Monster7Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster8.center.x < LeftSide) && (Monster8Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster9.center.x < LeftSide) && (Monster9Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }else if((Monster10.center.x < LeftSide) && (Monster10Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    // Monster hit left
    else if ((Monster1.center.x > RightSide) && (Monster1Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster2.center.x > RightSide) && (Monster2Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster3.center.x > RightSide) && (Monster3Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster4.center.x > RightSide) && (Monster4Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster5.center.x > RightSide) && (Monster5Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster6.center.x > RightSide) && (Monster6Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster7.center.x > RightSide) && (Monster7Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster8.center.x > RightSide) && (Monster8Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster9.center.x > RightSide) && (Monster9Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }else if((Monster10.center.x > RightSide) && (Monster10Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
}

-(void)MonsterMoveDown{
    
    
    Monster1.center = CGPointMake(Monster1.center.x, Monster1.center.y + 5);
    Monster2.center = CGPointMake(Monster2.center.x, Monster2.center.y + 5);
    Monster3.center = CGPointMake(Monster3.center.x, Monster3.center.y + 5);
    Monster4.center = CGPointMake(Monster4.center.x, Monster4.center.y + 5);
    Monster5.center = CGPointMake(Monster5.center.x, Monster5.center.y + 5);
    Monster6.center = CGPointMake(Monster6.center.x, Monster6.center.y + 5);
    Monster7.center = CGPointMake(Monster7.center.x, Monster7.center.y + 5);
    Monster8.center = CGPointMake(Monster8.center.x, Monster8.center.y + 5);
    Monster9.center = CGPointMake(Monster9.center.x, Monster9.center.y + 5);
    Monster10.center = CGPointMake(Monster10.center.x, Monster10.center.y + 5);

     }

-(void)Start:(id)sender{
    
    Start.hidden = YES;
    Exit.hidden = YES;
    Shoot.hidden = NO;
    
    Monster1.hidden = NO;
    Monster2.hidden = NO;
    Monster3.hidden = NO;
    Monster4.hidden = NO;
    Monster5.hidden = NO;
    Monster6.hidden = NO;
    Monster7.hidden = NO;
    Monster8.hidden = NO;
    Monster9.hidden = NO;
    Monster10.hidden = NO;
    
    // every 0.05 second it is going to run the code we call movement
    MovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Movement) userInfo:nil repeats:YES];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    Bullet.hidden = YES;
    Shoot.hidden = YES;
    
    Monster1Hit = NO;
    Monster2Hit = NO;
    Monster3Hit = NO;
    Monster4Hit = NO;
    Monster5Hit = NO;
    Monster6Hit = NO;
    Monster7Hit = NO;
    Monster8Hit = NO;
    Monster9Hit = NO;
    Monster10Hit = NO;
    
    
    Monster1.hidden = YES;
    Monster2.hidden = YES;
    Monster3.hidden = YES;
    Monster4.hidden = YES;
    Monster5.hidden = YES;
    Monster6.hidden = YES;
    Monster7.hidden = YES;
    Monster8.hidden = YES;
    Monster9.hidden = YES;
    Monster10.hidden = YES;
    
    MonsterMovement = 5;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
