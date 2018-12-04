//
//  JZYISwitchVC.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/12/4.
//  Copyright © 2018年 LYC. All rights reserved.
//

import UIKit

import PagingMenuController

struct PagingMenuOptions: PagingMenuControllerCustomizable {
    private let vc1 = JZYISwitchAVC()
    private let vc2 = JZYISwitchBVC()
    
    var componentType: ComponentType {
        return .all(menuOptions: MenuOptions(), pagingControllers: pagingControllers)
    }
    
    var pagingControllers: [UIViewController] {
        return [vc1, vc2]
    }
    
    struct MenuOptions: MenuViewCustomizable {
        
        var displayMode: MenuDisplayMode {
            return .segmentedControl
        }
        
        var itemsOptions: [MenuItemViewCustomizable] {
            return [Menu1(), Menu2()]
        }
    }
    
    struct Menu1: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "电影"))
        }
    }
    
    struct Menu2: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "音乐"))
        }
    }
}


class JZYISwitchVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let options = PagingMenuOptions()
        let pagingMenuController = PagingMenuController(options: options)
        pagingMenuController.view.frame.origin.y += 64
        pagingMenuController.view.frame.size.height -= 64
        
        addChildViewController(pagingMenuController)
        view.addSubview(pagingMenuController.view)
        
        pagingMenuController.onMove = { state in
            switch state {
            case let .willMoveItem(menuItemView, previousMenuItemView):
                print("--- 标签将要切换 ---")
                print("老标签：\(previousMenuItemView.titleLabel.text!)")
                print("新标签：\(menuItemView.titleLabel.text!)")
            case let .didMoveItem(menuItemView, previousMenuItemView):
                print("--- 标签切换完毕 ---")
                print("老标签：\(previousMenuItemView.titleLabel.text!)")
                print("新标签：\(menuItemView.titleLabel.text!)")
            case let .willMoveController(menuController, previousMenuController):
                print("--- 页面将要切换 ---")
                print("老页面：\(previousMenuController)")
                print("新页面：\(menuController)")
            case let .didMoveController(menuController, previousMenuController):
                print("--- 页面切换完毕 ---")
                print("老页面：\(previousMenuController)")
                print("新页面：\(menuController)")
            case .didScrollStart:
                print("--- 分页开始左右滑动 ---")
            case .didScrollEnd:
                print("--- 分页停止左右滑动 ---")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
