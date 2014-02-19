//
//  MusicCollection.m
//  Lecture 6
//
//  Created by Julian Hunt on 1/28/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "MusicCollection.h"
#import "Playlist.h"
@implementation MusicCollection

@synthesize playlists;
@synthesize library;

-(id) init
{
    library=[[Playlist alloc]init];
    playlists=[[NSMutableArray alloc]init];
    return self;
}


-(void)addPlaylist:(Playlist*) p
{
    [playlists addObject:p ];
}
-(void)removePlaylist:(Playlist*)pName
{
    [playlists removeObject:pName];
}
-(void)addSongToMaster:(Song *)sName
{
    bool alreadyAdded=FALSE;
    
    for(Song * theSong in [library songs])
    {
       // NSLog(@"here song loop");
        if([theSong isEqual: sName])
        {
           // NSLog(@"They are equal!");
            alreadyAdded=TRUE;
        }
            
    }
    
    
    if(alreadyAdded==FALSE)
    {
        //NSLog(@"song was added to master");
        [library addSong:sName collection:self];
    }
    
    
}
-(void)removeSongFromMaster:(Song *)sName
{
    [library removeSong:sName];
    for(Playlist * p in playlists)
    {
        for(Song * theSong in [p songs])
        {
            if(theSong==sName)
            {
                [p removeSong:theSong];
            }
        }
    }
}
@end
