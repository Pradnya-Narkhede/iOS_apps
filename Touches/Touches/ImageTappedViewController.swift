//
//  ImageTappedViewController.swift
//  Touches
//
//  Created by Mac on 21/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ImageTappedViewController: UIViewController,UINavigationControllerDelegate,
UIImagePickerControllerDelegate {

    var picker : UIImagePickerController!

    
    @IBOutlet weak var imgData: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgData.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imgTapped))
        tapGesture.numberOfTapsRequired = 2
        imgData.addGestureRecognizer(tapGesture)
       
    }
    
    @objc func imgTapped(){
        
        picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(picker, animated: true, completion: nil)

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let pickedImage = info["UIImagePickerControllerOriginalImage"]as! UIImage
        
        imgData.image = pickedImage
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
