//
//  PageViewController.swift
//  sampleSplitView
//
//  Created by 木下岳 on 2016/11/12.
//  Copyright © 2016年 gakukinoshita. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        self.dataSource! = self
    }

    func getFirst() -> Page1ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "Page1ViewController") as! Page1ViewController
    }
    func getSecond() -> Page2ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "Page2ViewController") as! Page2ViewController
    }
    
    func getThird() -> Page3ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "Page3ViewController") as! Page3ViewController
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

extension PageViewController : UIPageViewControllerDataSource {
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: Page3ViewController.self) {
            // 3 -> 2
            return getSecond()
       } else if viewController.isKind(of: Page2ViewController.self) {
            // 2 -> 1
            return getFirst()
        } else {
            // 1 -> end of the road
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: Page1ViewController.self) {
            // 1 -> 2
            return getSecond()
        } else if viewController.isKind(of: Page2ViewController.self) {
            // 2 -> 3
            return getThird()
        } else {
            // 3 -> end of the road
            return nil
        }
}
}
