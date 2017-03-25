//
//  MusicListVCViewController.swift
//  SegueControls
//
//  Created by Solomon Rajkumar on 25/03/17.
//  Copyright © 2017 Solomon Rajkumar. All rights reserved.
//

import UIKit

class MusicListVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func playSong(_ sender: Any) {
        
        let songTitle = "Pray for me brother"
        performSegue(withIdentifier: "PlaySongSegue", sender: songTitle)
        
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        if let destination = segue.destination as? PlaySongViewController {
            
            if let song = sender as? String {
                
                destination.selectedSong = song
            }
            
        }
        
    }
    

}
