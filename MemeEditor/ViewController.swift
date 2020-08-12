//
//  ViewController.swift
//  MemeEditor
//
//  Created by Mrunalini Gaddam on 8/10/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    
    override func viewWillAppear(_ animated: Bool) {
         cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var imagePickerView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var toolBar: UIToolbar!
//    @IBAction func pickImageViaCamera(_ sender: Any) {
//        let imagePicker = UIImagePickerController()
//        imagePicker.delegate = self
//        imagePicker.sourceType = .camera
//        imagePicker.allowsEditing = true
//
//        present(imagePicker, animated: true, completion: nil)
//    }
    
//    @IBAction func pickImageViaLibrary(_ sender: Any) {
//    chooseImageFromCameraOrPhoto(source: UIImagePickerController.pho)
////    let imagePicker = UIImagePickerController()
////    imagePicker.delegate = self
////    imagePicker.sourceType = .photoLibrary
////    imagePicker.allowsEditing = true
////
////    present(imagePicker, animated: true, completion: nil)
//    }
    
    
    func chooseImageFromCameraOrPhoto(source: UIImagePickerController.SourceType) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = true
        pickerController.sourceType = source
        present(pickerController, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            imagePickerView.image = image
            
        }else if let editedImage = info[.editedImage] as? UIImage {
            imagePickerView.image = editedImage
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated: true, completion: nil)
    }
}
