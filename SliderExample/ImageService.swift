//
//  ImageService.swift
//  SliderExample
//
//  Created by Luiz Fernando Salvaterra on 07/09/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class ImageService {
    
    public static func loadImages() -> Array<UIImage> {
        
        var imageArray: [UIImage] = []
        let gokuImage = UIImage(named: "goku")
        let vegetaImage = UIImage(named: "vegeta")
        let gohanImage = UIImage(named: "gohan")
        let trunksImage = UIImage(named: "trunks")
        
        imageArray.append(gokuImage!)
        imageArray.append(vegetaImage!)
        imageArray.append(gohanImage!)
        imageArray.append(trunksImage!)
        
        return imageArray
    }
}
