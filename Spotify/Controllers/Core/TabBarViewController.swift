//
//  TabBarViewController.swift
//  Spotify
//
//  Created by Quang Duc on 11/03/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vcTabOne = HomeViewController()
        let vcTabTwo = SearchViewController()
        let vcTabThree = LibraryViewController()

        vcTabOne.title = "Browser"
        vcTabTwo.title = "Search"
        vcTabThree.title = "Library"

        vcTabOne.navigationItem.largeTitleDisplayMode = .always
        vcTabTwo.navigationItem.largeTitleDisplayMode = .always
        vcTabThree.navigationItem.largeTitleDisplayMode = .always


        let navOne = UINavigationController(rootViewController: vcTabOne)
        let navTwo = UINavigationController(rootViewController: vcTabTwo)
        let navThree = UINavigationController(rootViewController: vcTabThree)

        navOne.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navTwo.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navThree.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)

        navOne.navigationBar.prefersLargeTitles = true
        navTwo.navigationBar.prefersLargeTitles = true
        navThree.navigationBar.prefersLargeTitles = true

        setViewControllers([navOne, navTwo, navThree], animated: false)


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
