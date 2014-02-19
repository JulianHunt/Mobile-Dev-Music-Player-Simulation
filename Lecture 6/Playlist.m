//
//  Playlist.m
//  Lecture 6
//
//  Created by Julian Hunt on 1/28/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "Playlist.h"
@class  MusicCollection;
@implementation Playlist

@synthesize name,songs;

-(id) init {
    
    songs = [[NSMutableArray alloc] init];
    return self;
}

-(void)addSong:(Song*) sName collection:(MusicCollection*) c;
{
    [songs addObject:sName];
    [c addSongToMaster:sName];
}
-(void)removeSong:(Song*)sName
{
    [songs removeObject:sName];
}

-(void)printPlaylist
{
    NSLog(@"Playlist Name: %@",name);
    for(Song* s in songs)
    {
        [s printSong];
    }
}

-(void)findSong:(Song*)sName
{
    bool found=FALSE;
    for(Song* s in songs)
    {
        if([sName isEqual:s])
        {
            NSLog(@"The song was found, below is the information");
            [s printSong];
            found=TRUE;
        }
    }
    if(found==FALSE)
    {
        NSLog(@"That song was not found in the playlist");
    }
    
    
 
}

@end
