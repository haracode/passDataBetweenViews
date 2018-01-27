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
    
    class func addToDo(newToDo: String) {
        if newToDo.contains(","){
            ToDoController.insertMultipleStrings(input: newToDo)
        } else {
            ToDoController.toDoArray.append(newToDo)
        }
    }
    
    class func removeToDo(atIndex: Int){
        if (atIndex > ToDoController.toDoArray.count - 1) {
            return
        } else {
            ToDoController.toDoArray.remove(at: atIndex)
        }
    }
    
    private class func insertMultipleStrings(input: String){
        let splitArray = input.split(separator: ",")
        for element in splitArray {
            //Prevent addition of blank values to list
            if element == " " {
                continue
            }
            //Remove leading whitespace
            ToDoController.toDoArray.append(String(element.trimmingCharacters(in: .whitespaces)))
        }
    }
}
