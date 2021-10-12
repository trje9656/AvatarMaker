//
//  ViewController.swift
//  AvatarMaker
//
//  Created by Trevor Jedziniak on 10/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageTop: UIImageView!
    @IBOutlet weak var imageEyes: UIImageView!
    @IBOutlet weak var imageNose: UIImageView!
    @IBOutlet weak var imageBottom: UIImageView!
    var top_tracker = 5
    var eye_tracker = 5
    var nose_tracker = 5
    var bottom_tracker = 5
    
    @IBAction func saveAvatar(_ sender: UIButton) {
        if sender.tag == 13 {
            //screenshot()
            
               var image :UIImage?
               let currentLayer = UIApplication.shared.keyWindow!.layer
               let currentScale = UIScreen.main.scale
               UIGraphicsBeginImageContextWithOptions(currentLayer.frame.size, false, currentScale);
               guard let currentContext = UIGraphicsGetCurrentContext() else {return}
               currentLayer.render(in: currentContext)
               image = UIGraphicsGetImageFromCurrentImageContext()
               UIGraphicsEndImageContext()
               guard let img = image else { return }
               UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil)
            
            
        }
        
    }
   
    
    @IBAction func topChange(_ sender: UIButton) {
        
     
        if sender.tag == 11 {
            top_tracker+=1
        }
        if sender.tag == 10 {
                top_tracker-=1
                if top_tracker < 5{
                    top_tracker = 9
                }
            }
            
        if top_tracker % 5 == 0 {
            imageTop.image = UIImage(named: "mtop")
            
        }
        else if top_tracker % 5 == 1 {
            imageTop.image = UIImage(named: "otop")
            
        }
        else if top_tracker % 5 == 2 {
            imageTop.image = UIImage(named: "rtop")
            
        }
        else if top_tracker % 5 == 3 {
            imageTop.image = UIImage(named: "sptop")
            
        }
        else if top_tracker % 5 == 4 {
            imageTop.image = UIImage(named: "ttop")
        }
            
        
    }
    @IBAction func eyesChange(_ sender: UIButton) {
        
        
        if sender.tag == 21 {
            eye_tracker+=1
        }
        if sender.tag == 20 {
            eye_tracker-=1
                if eye_tracker < 5{
                    eye_tracker = 9
                }
            }
            
        if eye_tracker % 5 == 0 {
            imageEyes.image = UIImage(named: "meyes")
            
        }
        else if eye_tracker % 5 == 1 {
            imageEyes.image = UIImage(named: "oeyes")
            
        }
        else if eye_tracker % 5 == 2 {
            imageEyes.image = UIImage(named: "reyes")
            
        }
        else if eye_tracker % 5 == 3 {
            imageEyes.image = UIImage(named: "speyes")
            
        }
        else if eye_tracker % 5 == 4 {
            imageEyes.image = UIImage(named: "teyes")
        }
            
        
    }
    @IBAction func noseChange(_ sender: UIButton) {
        
        if sender.tag == 31 {
            nose_tracker+=1
        }
        if sender.tag == 30 {
            nose_tracker-=1
                if nose_tracker < 5{
                    nose_tracker = 9
                }
            }
            
        if nose_tracker % 5 == 0 {
            imageNose.image = UIImage(named: "mnose")
            
        }
        else if nose_tracker % 5 == 1 {
            imageNose.image = UIImage(named: "onose")
            
        }
        else if nose_tracker % 5 == 2 {
            imageNose.image = UIImage(named: "rnose")
            
        }
        else if nose_tracker % 5 == 3 {
            imageNose.image = UIImage(named: "spnose")
            
        }
        else if nose_tracker % 5 == 4 {
            imageNose.image = UIImage(named: "tnose")
        }
            
        
    }
    @IBAction func bottomChange(_ sender: UIButton) {
        
        if sender.tag == 41 {
            bottom_tracker+=1
        }
        if sender.tag == 40 {
            bottom_tracker-=1
                if bottom_tracker < 5{
                    bottom_tracker = 9
                }
            }
            
        if bottom_tracker % 5 == 0 {
            imageBottom.image = UIImage(named: "mbottom")
            
        }
        else if bottom_tracker % 5 == 1 {
            imageBottom.image = UIImage(named: "obottom")
            
        }
        else if bottom_tracker % 5 == 2 {
            imageBottom.image = UIImage(named: "rbottom")
            
        }
        else if bottom_tracker % 5 == 3 {
            imageBottom.image = UIImage(named: "spbottom")
            
        }
        else if bottom_tracker % 5 == 4 {
            imageBottom.image = UIImage(named: "tbottom")
        }
        else {
            imageBottom.image = UIImage(named: "mbottom")
        }
            
        
    }
    
    @IBAction func resetAll(_ sender: UIButton) {
         top_tracker = 5
         eye_tracker = 5
         nose_tracker = 5
         bottom_tracker = 5
        imageBottom.image = UIImage(named: "mbottom")
        imageNose.image = UIImage(named: "mnose")
        imageEyes.image = UIImage(named: "meyes")
        imageTop.image = UIImage(named: "mtop")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

