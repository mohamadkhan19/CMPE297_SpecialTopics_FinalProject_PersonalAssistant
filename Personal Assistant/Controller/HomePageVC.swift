//
//  ViewController.swift
//  Personal Assistant
//
//  Created by Mohamad Khan on 11/24/17.
//  Copyright © 2017 TheUltimates.com. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var assistanceTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        assistanceTable.dataSource = self
        assistanceTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getAssistance().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AssistanceCell") as? AssistanceCell {
            let assistance = DataService.instance.getAssistance()[indexPath.row]
            cell.updateViews(assistance: assistance)
            return cell
        } else {
            return AssistanceCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row) {
        case 0  :
            performSegue(withIdentifier: "PersonalDiarySegue", sender: nil)
            break;
        case 1  :
            performSegue(withIdentifier: "LocateFriendsSegue", sender: nil)
            break;
        case 2  :
            performSegue(withIdentifier: "HealthDashboardSegue", sender: nil)
            break;
        case 3  :
            performSegue(withIdentifier: "ImageRecognitionSegue", sender: nil)
            break;
        default :
            print("Inside default statement")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
    }


}

