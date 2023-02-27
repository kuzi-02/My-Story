//
//  DetailViewController.swift
//  My Story - Kuzi
//
//  Created by Kuzivakwashe Mavera on 2/26/23.
//

import UIKit

class DetailViewController: UIViewController {
    var myStory: MyStory?
    
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let myStory = myStory {
                    label1.text = myStory.title
                    picture.image = myStory.image
                    label2.text = myStory.name
                    
                    
                }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
