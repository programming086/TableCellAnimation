//
//  LessonsTableViewController.swift
//  TableCellAnimation
//
//  Created by Игорь on 25.12.15.
//  Copyright © 2015 Ihor Malovanyi. All rights reserved.
//

import UIKit

class LessonsTableViewController: UITableViewController {

    let lessonTitles = ["Урок 1 - Прототипирование", "Урок 2 - Знакомство с Xcode", "Урок 3 - Autolayout", "Урок 4 - Простейшая TableView", "Урок 5 - Кастомизация ячеек", "Урок 6 - Нажатие на ячейку + AlertView и ActionSheet", "Урок 7 - Свайп по ячейке и кастомные действия+ Activity View", "Урок 8 - NavigationController и Segue", "Swift 2 iOS 9 SDK - Урок 9 - Создание класса со свойствами", "Урок 10 - Совершенствуем Detail View и кастомизируем Navigation Bar", "Урок 11 - Автоматическое масштабирование ячейки / Autoresizing Cell", "Урок 12 - Базовая анимация и Unwind Segue", "Урок 13 - MapKit и AnnotationView", "Урок 14 - UIImagePickerController и Static Cells", "Урок 15 - Учим основы Core Data", "Урок 16 - Поиск по таблице Search Bar", "Урок 17 - Простейшая панель вкладок Tab Bar", "Урок 18 - UIWebView + SFSafariViewController + секции TableView", "Урок 19 - Основы CloudKit", "Урок 20 - Локализация приложения"]

    let lessonImages = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05", "06.jpg", "07.jpg", "08.jpg", "09.jpg", "10.jpg", "11", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "16.jpg", "17", "18.jpg", "19", "20"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lessonTitles.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! LessonTableViewCell
        
        cell.lessonTitleLabel?.text = lessonTitles[indexPath.row]
        cell.lessonImageView.image = UIImage(named: lessonImages[indexPath.row])

        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.alpha = 0
//        
//        UIView.animateWithDuration(1.0, animations: {cell.alpha = 1})
        
//        let rotationAngleInRadians = 90.0 * CGFloat(M_PI/180)
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 100, 0)
        cell.layer.transform = rotationTransform
        
        UIView.animateWithDuration(1.0, animations: {cell.layer.transform = CATransform3DIdentity})
    }
    

}
