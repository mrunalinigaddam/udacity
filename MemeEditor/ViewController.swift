//
//  ViewController.swift
//  MemeEditor
//
//  Created by Mrunalini Gaddam on 8/10/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pickAnImage(_ sender: Any) {
    let pickerController = UIImagePickerController()
        pickerController.delegate = self
    pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true,completion: nil)
        //dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var imagePickerView: UIImageView!
}
