//
//  ViewController.swift
//  project
//
//  Created by Macbook on 09/11/18.
//  Copyright © 2018 DixLab. All rights reserved.
//

import UIKit
import EventKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func addevent(_ sender: UIButton) {
    
    let eventStore:EKEventStore = EKEventStore()
    
        eventStore.requestAccess(to: .event, completion: {(granted, error) in
            if (granted) && (error == nil)
            {
                print("granted\(granted)")
                print("error \(error)")
                let event:EKEvent = EKEvent(eventStore: eventStore)
                event.title = "Añadir el titulo de un evento"
                event.startDate = Date()
                event.endDate = Date()
                event.notes = "esto es una nota"
                event.calendar = eventStore.defaultCalendarForNewEvents
                
                
            }
            
        })
    
    }

}

