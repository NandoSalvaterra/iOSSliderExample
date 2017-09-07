//
//  SliderImageViewController.swift
//  SliderExample
//
//  Created by Luiz Fernando Salvaterra on 06/09/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class SliderImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }

}
