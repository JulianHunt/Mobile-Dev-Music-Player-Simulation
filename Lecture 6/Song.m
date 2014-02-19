//
//  Song.m
//  Lecture 6
//
//  Created by Julian Hunt on 1/28/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize name,artist,album;

-(void) printSong
{
    NSLog(@"Song: %@ Artist %@ Album: %@", name, artist, album);
}

@end
