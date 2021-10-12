//
//  TodayViewController.swift
//  Devotional
//
//  Created by Femi Aliu on 04/10/2021.
//

import UIKit

class TodayViewController: UIViewController {
    
    let logoImage = UIImage()
    let mainPicture = UIImage()
    let titleLabel = UILabel()
    let dateLabel = UILabel()
    let scriptureSnippet = UILabel()
    let referenceLabel = UILabel()
    let bodyLabel = UILabel()
    let photoQuote = UIImage()
    let additionalStudy = UILabel()
    let prayerPoints = UILabel()
    let shareLabel = UILabel()
    let donateButton = UIButton()
    let facebookButton = UIButton()
    let twitterButton = UIButton()
    
    
    let bodyText = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        navigationController?.hidesBarsOnSwipe = true

        // Do any additional setup after loading the view.
        
        let data = DataLoader().devotionalData
        
        print(data)
        
//        bodyText.text = DataLoader().devotionalData
    }
    
    
    
    /*
    
    func readJSONFile(forName name: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
    
    
    func parse(jsonData: Data) -> Devotionals? {
        do {
            let decodedData = try JSONDecoder().decode(Devotionals.self, from: jsonData)
            return decodedData
        } catch {
            print("error: \(error)")
        }
        return nil
    }
    
    
    let jsonData = readJSONFile(forName: "dataFile")
    
    if let data = jsonData {
        if let devotionalObj = parse(jsonData: data) {
            print("Devotionals: \(devotionalObj.devotionals)")
            p
        }
    }
    
        
    */
    
    
//    let formatter = DateFormatter()
//    formatter.dateFormat = "EEE, d MMM, yyy"
//    formatter.locale = Locale(identifier: "en_NG")
//    formatter.timeZone = TimeZone(identifier: "Africa/Lagos")

    
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        hidesBottomBarWhenPushed = true
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


/*
 display the devotional for each day - update all the labels and images and dates automatically each day
 write function to display the devotional for each day and update daily
 match each devotional to the day/date
 */
