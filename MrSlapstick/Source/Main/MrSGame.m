//
//  MrSGame.m
//  MrSlapstick
//
//  Created by Juha Riippi on 8/26/12.
//  Copyright (c) 2012 Juha Riippi. All rights reserved.
//

#import "MrSGame.h"
#import "MrSGameScene.h"

@interface MrSGame ()

@property (nonatomic, strong) MrSGameScene *scene;

@end

@implementation MrSGame

@synthesize scene = _scene;

#pragma mark -
#pragma mark Init and dealloc

-(id) initWithView:(UIView *)view {
    self = [super init];
    
    if( self ) {
        _scene = [MrSGameScene sceneWithFrame:view.bounds];
        [view addSubview:_scene];
    }
    
    return self;
}

-(void)dealloc {
    _scene = nil;
}

#pragma mark -
#pragma mark Public methods

-(void)start {
    [_scene start];
}

-(void)stop {
    [_scene stop];
}

@end
