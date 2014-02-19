//
//  Playlist.h
//  Lecture 6
//
//  Created by Julian Hunt on 1/28/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"
#import "MusicCollection.h"
@interface Playlist : NSObject
@property NSString* name;
@property NSMutableArray* songs;


-(void)addSong:(Song*) sName  collection : (MusicCollection*) c;
-(void)removeSong:(Song*)sName;
-(void)printPlaylist;
-(void)findSong:(Song*)sName;
@end
