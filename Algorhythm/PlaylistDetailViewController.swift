//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Crystal Mora on 2/29/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    var playlist: Playlist?
    
    
    @IBOutlet weak var playLIstImageCover: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    
    @IBOutlet weak var playlistArtis0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    @IBOutlet weak var playlistArtist3: UILabel!
    @IBOutlet weak var playlistArtist4: UILabel!
    @IBOutlet weak var playlistArtist5: UILabel!
    @IBOutlet weak var playlistArtist6: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playlist != nil {
          playLIstImageCover.image = playlist!.largeIcon
            playLIstImageCover.backgroundColor = playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
            playlistArtis0.text =  playlist!.artists[0]
            playlistArtist1.text = playlist!.artists[1]
            playlistArtist2.text = playlist!.artists[2]
            playlistArtist3.text = playlist!.artists[3]
            playlistArtist4.text = playlist!.artists[4]
            playlistArtist5.text = playlist!.artists[5]
            playlistArtist6.text = playlist!.artists[6]
            
            
            
            
        }
        }

        // Do any additional setup after loading the view.
   

  override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}


