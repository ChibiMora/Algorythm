//
//  ViewController.swift
//  Algorhythm
//
//  Created by Crystal Mora on 2/29/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    
    var playlistArray: [UIImageView] = []
    @IBOutlet weak var playListImageView0: UIImageView!
    @IBOutlet weak var playlistimagevew1: UIImageView!
    @IBOutlet weak var playlistimageView2: UIImageView!
    @IBOutlet weak var playlistimageView3: UIImageView!
    @IBOutlet weak var playlistimageView4: UIImageView!
    @IBOutlet weak var playlistimageView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         playlistArray += [playListImageView0, playlistimagevew1, playlistimageView2, playlistimageView3, playlistimageView4, playlistimageView5]
        
        
        for index in 0..<playlistArray.count{
            let playlist = Playlist(index: index)
            let playlistImageView = playlistArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
            
        }
      
      
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetailSegue" {
            let playlistImageView = sender!.view as! UIImageView
            if let index = playlistArray.indexOf(playlistImageView) {
                
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(index: index)
            }
            
        }
    }
    @IBAction func showPlaylistDetail(sender: AnyObject) {
      performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
    }
    

    
    

}

