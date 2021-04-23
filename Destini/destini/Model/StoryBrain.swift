//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
    Story(title: "How are you?",
          choice1: "I'm o'kay", choice1Destination: 2,
          choice2: "Not Bad", choice2Destination: 1),
        Story(title: "Your car was crashed.",
              choice1: "Oooops", choice1Destination: 2,
              choice2: "Good", choice2Destination: 3),
        Story(title: "What you want to eat?",
              choice1: "I want meat", choice1Destination: 5,
              choice2: "I dont asnt eat", choice2Destination: 4),
        Story(title: "Goodbye",
              choice1: "Bye", choice1Destination: 0,
              choice2: "Goodbye", choice2Destination: 0)    ]
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    mutating func nextStory(userChoice: String) {
        //let currentStory = stories[storyNumber]
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
    }
}

