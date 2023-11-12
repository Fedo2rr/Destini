//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        storyLabel.text = storyBrain.destiny[0].title
        super.viewDidLoad()
        choice1Button.setTitle(storyBrain.destiny[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.destiny[0].choice2, for: .normal)
        
    }
    
    
    @IBAction func choiseMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        
        let choice1Title = storyBrain.getChoice1()
        let choice2Title = storyBrain.getChoice2()

        
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(choice1Title, for: .normal)
        choice2Button.setTitle(choice2Title, for: .normal)
    }
    
}
