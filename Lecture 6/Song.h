//
//  Song.h
//  Lecture 6
//
//  Created by Julian Hunt on 1/28/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property NSString *name,*artist,*album;

-(void)printSong;
@end

