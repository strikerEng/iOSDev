//
//  PageViewController.swift
//  PageControllerApp
//
//  Created by Kire  on 6/21/22.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var controllerArray: [UIViewController]? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataSource = self
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Create a constant reference to all view controllers
        let firstVC = storyboard.instantiateViewController(withIdentifier: "page01")
        let secondVC = storyboard.instantiateViewController(withIdentifier: "page02")
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "page03")
        
        controllerArray = [firstVC, secondVC, thirdVC]
        
        // Set this array of view controllers inside the Page Controller
        self.setViewControllers([controllerArray![0]], direction: .forward, animated: true, completion: nil)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        //There must contain view controllers
        guard let vcIndex = controllerArray!.firstIndex(of: viewController) else{
            return nil
        }
        
        let preIndex = vcIndex - 1
        
        // If the preIndex is -1 then return the last view controller
        guard preIndex >= 0 else{
            return controllerArray!.last
        }
        
        // The preIndex should not be out of range
        guard controllerArray!.count > preIndex else{
            return nil
        }
        
        return controllerArray![preIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        //There must contain view controllers
        guard let vcIndex = controllerArray!.firstIndex(of: viewController) else{
            return nil
        }
        
        let nextIndex = vcIndex + 1
        
        // If the nextIndex is equal to the count of view controllers, loop to the first view controller
        guard nextIndex != controllerArray!.count else{
            return controllerArray!.first
        }
        
        // The number of view controllers has to be greater than the next index
        guard controllerArray!.count > nextIndex else{
            return nil
        }
        
        return controllerArray![nextIndex]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
