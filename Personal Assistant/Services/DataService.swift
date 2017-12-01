//
//  DataService.swift
//  Personal Assistant
//
//  Created by Mohamad Khan on 11/25/17.
//  Copyright © 2017 TheUltimates.com. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let assistanceCategories = [
        Assistance(title: "Personal Diary", imageName: "digital.png"),
        Assistance(title: "Locate Friends", imageName: "digital.png"),
        Assistance(title: "Health Dashboard", imageName: "digital.png"),
        Assistance(title: "Fall Detection", imageName: "digital.png"),
        Assistance(title: "Image Recognition", imageName: "digital.png")
    ]
    
    func getAssistance() -> [Assistance] {
        return assistanceCategories
    }
}
