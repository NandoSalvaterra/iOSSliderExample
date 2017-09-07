//
//  SliderPageViewController.swift
//  SliderExample
//
//  Created by Luiz Fernando Salvaterra on 06/09/17.
//  Copyright © 2017 Luiz Fernando Salvaterra. All rights reserved.
//

import UIKit

class SliderPageViewController: UIPageViewController {

    var images: [UIImage]? //nil??
    
    lazy var controllers : Array<UIViewController> = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var controllers = [UIViewController]()
        if let images = self.images {
            for image in images {
                let controller = storyboard.instantiateViewController(withIdentifier: "sliderImageViewController") as! SliderImageViewController
                controller.image = image
                controllers.append(controller)
            }
        }
        return controllers
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        self.automaticallyAdjustsScrollViewInsets = false
        scrollToPage(index: 0)

    }
    
    func scrollToPage(index: Int) {
        let controllerToShow = controllers[index]
        var direction = UIPageViewControllerNavigationDirection.forward
        
        if let currentViewController = viewControllers?.first {
            let currentIndex = controllers.index(of: currentViewController)
            if  currentIndex! > index {
                direction = .reverse
            }
        }
        configureDisplay(viewController: controllerToShow)
        setViewControllers([controllerToShow], direction: direction, animated: true, completion: nil)
    }
    
    func configureDisplay(viewController: UIViewController) {
        for (index, vc) in controllers.enumerated() {
            if  viewController === vc {
                 let imageViewController = viewController as! SliderImageViewController
                    imageViewController.image = images[index]
                
            }
        }
    }

}

extension SliderPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = controllers.index(of: viewController){
            if index > 0 {
                return controllers[index - 1]
            }
        }
        return controllers.last
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let index = controllers.index(of: viewController) {
            if index < controllers.count - 1 {
                return controllers[index + 1]
            }
        }
        return controllers.first
    }
}

extension SliderPageViewController: UIPageViewControllerDelegate {
    
}
