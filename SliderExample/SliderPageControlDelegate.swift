//
//  SliderPageControlDelegate.swift
//  SliderExample
//
//  Created by Luiz Fernando Salvaterra on 07/09/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import Foundation

protocol SliderPageControlDelegate : class {
    func setupPageControl(numberOfPages: Int)
    func turnPageControl(to index: Int)
}
