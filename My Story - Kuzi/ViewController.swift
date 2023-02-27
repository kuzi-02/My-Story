//
//  ViewController.swift
//  My Story - Kuzi
//
//  Created by Kuzivakwashe Mavera on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    let Mypassions = MyStory(title: "My passions", image: UIImage (named: "passions")!, name: "Singing")
    let funfacts = MyStory(title: "Fun facts about me", image: UIImage (named: "funfacts")!, name: "I am a nerd")
    let collegelife = MyStory(title: "My college life", image: UIImage (named: "college")!, name: "Reading, Partying and Sleeping are the perfect description for my college life. I also hang out with my friends in the picture above")
    
    var myStory: [MyStory] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        myStory = [Mypassions, funfacts, collegelife]
        }
        
        
        @IBAction func didTapGesture(_ sender: UITapGestureRecognizer) {
            
            if let tappedView = sender.view {
                performSegue(withIdentifier: "detailSegue", sender: tappedView)
            }
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "detailSegue",
               let tappedView = sender as? UIView,
               let detailViewController = segue.destination as? DetailViewController {
                
                if tappedView.tag == 0 {
                    detailViewController.myStory = myStory[0]
                } else if tappedView.tag == 1 {
                    detailViewController.myStory = myStory[1]
                } else if tappedView.tag == 2 {
                    detailViewController.myStory = myStory[2]
                }
                else {
                    print("nothing was tapped, please check your selection.")
                }
            }
        }
    }
    
    

