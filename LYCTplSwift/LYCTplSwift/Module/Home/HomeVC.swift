//
//  HomeVC.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/11/28.
//  Copyright © 2018年 LYC. All rights reserved.
//

import UIKit

import ObjectMapper

class List: Mappable {
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        parentId    <- map["parentId"]
        sid         <- map["sid"]
        name      <- map["name"]
    }
    
    var parentId: Int?
    var sid: Int?
    var name: String?
    
    var child: [List]?
}

class HomeVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let array = [ [
            "parentId": 1,
            "sid": 1,
            "name": "环境"
            ],[
                "parentId":1,
                "sid": 2,
                "name": "房间"
            ],[
                "parentId": 1,
                "sid": 3,
                "name": "厨房"
            ],[
                "parentId": 2,
                "sid": 4,
                "name": "床底"
            ],[
                "parentId": 2,
                "sid": 5,
                "name": "桌子"
            ],[
                "parentId": 2,
                "sid": 6,
                "name": "冰箱"
            ],[
                "parentId": 1,
                "sid": 7,
                "name": "阳台"
            ]
        ]
        
        let list = Mapper<List>().mapArray(JSONArray: array)
        
        var setTest: [Int: List] = [:]
        for item in list {
            let sid = item.sid
            setTest[sid!] = item
        }

        var root: List?
        
        for item in list {
            if item.sid == item.parentId {
                //根节点
                root = setTest[item.sid!]!
            }
            else {
                var t = setTest[item.parentId!]?.child ?? []
                t.append(item)
                setTest[item.parentId!]?.child = t;
            }
        }

        print(root)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
