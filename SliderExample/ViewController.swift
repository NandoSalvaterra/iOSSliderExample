//
//  ViewController.swift
//  SliderExample
//
//  Created by Luiz Fernando Salvaterra on 06/09/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SliderPageControlDelegate{

    @IBOutlet weak var pageControl: UIPageControl!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPageViewController" {
            let sliderPageViewController = segue.destination as! SliderPageViewController
            sliderPageViewController.images = ImageService.loadImages()
            sliderPageViewController.sliderPageControlDelegate = self
        }
    }

    func setupPageControl(numberOfPages: Int) {
        pageControl.numberOfPages = numberOfPages
    }
    
    func turnPageControl(to index: Int) {
        pageControl.currentPage = index
    }
}


