//
//  MrSRenderer.m
//  MrSlapstick
//
//  Created by Juha Riippi on 8/26/12.
//  Copyright (c) 2012 Juha Riippi. All rights reserved.
//

#import "MrSRenderer.h"
#import "MrSGameScene.h"

@interface MrSRenderer ()

@property (nonatomic, weak) MrSGameScene *scene;

@end

@implementation MrSRenderer

@synthesize scene = _scene;

-(id)initForScene:(MrSGameScene *)scene {
    self = [super init];
    
    if( self ) {
        _scene = scene;
    }
    
    return self;
}

@end
