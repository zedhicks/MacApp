//
//  ViewController.swift
//  mytodoMacApp
//
//  Created by Emmanuel Vachon on 2017-05-16.
//  Copyright © 2017 artdram. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var inputField: NSTextField!
    
    @IBOutlet weak var importantCheckBox: NSButton!
    
    var toDos : [Todo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
  /*  func getTodo() {
        // get coredata
        if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext {
            do {
                toDos = try context.fetch(Todo.fetchRequest())
        } catch{}
        
        //set property
        
        //display on table
        
        }*/
    

    @IBAction func addClick(_ sender: Any) {
        if inputField.stringValue != "" {
            if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext {
                let toDo = Todo(context: context)
                toDo.name = inputField.stringValue
                if importantCheckBox.state == 0 {
                    toDo.important = false }
                else {
                    toDo.important = true}
              (NSApplication.shared().delegate as? AppDelegate)?.saveAction(nil)
                inputField.stringValue = ""
                importantCheckBox.state = 0
               // getTodo()
                }
                    
                }
                
        
        }
        
        
    }
