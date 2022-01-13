//
//  TabBarController.swift
//  iOS photo
//
//  Created by Павел Дубинин on 13.01.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    let firstItem = MediaLibrary()
    let secondItem = ForYou()
    let thirdItem = Albums()
    let fourthItem = Search()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.tintColor = .systemBlue
        viewControllers = [firstItem, secondItem, thirdItem, fourthItem]
        setTitlesTabBar()
    }
    
    //MARK: - Config Tab bar
    private func setTitlesTabBar() {
        firstItem.tabBarItem = UITabBarItem(title: Tittles.mediaLibrary, image: UIImage(systemName: Icons.mediaLibrary), tag: 0)
        secondItem.tabBarItem = UITabBarItem(title: Tittles.forYou, image: UIImage(systemName: Icons.forYou), tag: 1)
        thirdItem.tabBarItem = UITabBarItem(title: Tittles.albums, image: UIImage(systemName: Icons.albums), tag: 2)
        fourthItem.tabBarItem = UITabBarItem(title: Tittles.search, image: UIImage(systemName: Icons.search), tag: 3)
    }

}
    //MARK: - Constants
extension TabBarController {
    
    enum Tittles {
        static let mediaLibrary = "Медиатека"
        static let forYou = "Для Вас"
        static let albums = "Альбомы"
        static let search = "Поиск"
    }
    
    enum Icons {
        static let mediaLibrary = "photo.on.rectangle.angled"
        static let forYou = "heart.text.square"
        static let albums = "square.stack.fill"
        static let search = "magnifyingglass"
    }
}
