//
//  MusicCollection.h
//  Lecture 6
//
//  Created by Julian Hunt on 1/28/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Playlist;
@class Song;
@interface MusicCollection : NSObject

@property Playlist* library;
@property NSMutableArray * playlists;

-(void)addPlaylist:(Playlist*) p ;
-(void)removePlaylist:(Playlist*)pName;
-(void)addSongToMaster:(Song*) sName;
-(void)removeSongFromMaster:(Song*) sName;
@end