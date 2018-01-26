//
//  ToDoController.swift
//  passDataBetweenViews
//
//  Created by Greg Haranczyk on 1/25/18.
//  Copyright © 2018 Greg Haranczyk. All rights reserved.
//

import Foundation


class ToDoController: NSObject {
    
    //Singleton
    static var toDoArray: [String] = []
    
    class func addToDo(newToDo: String){
        ToDoController.toDoArray.append(newToDo)
    }
    
    class func removeToDo(atIndex: Int){
        if (atIndex > ToDoController.toDoArray.count - 1){
            return
        } else {
            ToDoController.toDoArray.remove(at: atIndex)
        }
    }
}
