//
//  main.m
//  Lecture 6
//
//  Created by Julian Hunt on 1/28/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "song.h"
#import "Playlist.h"
#import "MusicCollection.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        //Creates Music collection
        MusicCollection *testCollec = [[MusicCollection alloc] init];
    
        //Creates a Song
        Song * mySong=[[Song alloc] init];
        [mySong setName:@"Sweater Weather"];
        [mySong setAlbum:@"I Love You"];
        [mySong setArtist:@"The Neighborhood"];
        
        //Creates a playlist
        Playlist * testPlaylist= [[Playlist alloc]init];
        [testPlaylist setName:@"Indie"];
        //Add playlist
        [testCollec addPlaylist: testPlaylist];
        //Add a song to it
        [testCollec.playlists[0] addSong:mySong collection :testCollec];
        
        
        //Test some output functions
        [testPlaylist findSong:mySong];
        [[testCollec library] findSong:mySong];
        [mySong printSong];
        
        
    }
    return 0;
}

