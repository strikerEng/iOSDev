//
//  SceneDelegate.swift
//  SplitViewCustomApp
//
//  Created by Kire  on 6/21/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate, UISplitViewControllerDelegate{

    var window: UIWindow?
    
    // Takes care of showing and hiding the detail view
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else{
            return false
        }
        
        guard let topAsDetailController = secondaryAsNavController.topViewController as? SecondaryViewController else{
            return false
        }
        
        // Check if the detailItem attribute is nil
        // detailItem holds the datat to show in the secondary view controller
        if topAsDetailController.detailItem == nil{
            // return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded
            return true
        }
        
        return false
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
        
        let splitVC = window!.rootViewController as! UISplitViewController
        
        // Specify this file as the split view controller's delegate
        splitVC.delegate = self
        
        let navigationVC = splitVC.viewControllers.last as? UINavigationController
        navigationVC?.topViewController!.navigationItem.leftBarButtonItem = splitVC.displayModeButtonItem
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

