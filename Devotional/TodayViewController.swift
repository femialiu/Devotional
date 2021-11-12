//
//  TodayViewController.swift
//  Devotional
//
//  Created by Femi Aliu on 04/10/2021.
//

import UIKit

class TodayViewController: UIViewController {
    

    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let stackView = UIStackView()
    
    let logoImage = UIImageView()
    
    let mainImageView = UIImageView()
    
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FROM LO DEBAR TO JERUSALEM"
        label.font = .boldSystemFont(ofSize: 20)
        
        return label
    }() // 1
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "21 October, 2021"
        
        return label
    }()// 2
    
    let scriptureSnippet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Then 1 the king said, \\“Is there not still someone of the house of Saul, to whom I may show the kindness of God?\\” II Samuel 9:3"
        label.numberOfLines = 3
        label.sizeToFit()
        
        return label
    }() // 3
    
    let scriptureReferenceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "REFERENCE II Samuel 9:1-13"
        label.numberOfLines = 2
        
        return label
    }() // 4
    
    let bodyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "\\t“Lo Debar\\” was an ancient 1 city east of Jordan. The name means ‘no pasture, no communication, or no word.’ It is a place of negativity, no advancement, and dryness. This had become Mephibosheth’s ‘reality,’ his residence until David sent for him. Mephibosheth was born a prince in the palace, but, through no fault of his, he suffered a great reversal of fortunes. He was forgotten, submerged in filth, dryness, lack, unfruitfulness, lack of communication, and away from the real world. Worst of all, he was lame in both feet and couldn’t help himself even if he wanted to.\\n\\tHowever, despite his helpless situation, when it was his time to move up in life, God brought him into David’s focus, who showed him unusual kindness. The kindness shown to Mephibosheth was purely orchestrated by God as revealed in David’s words, \\“Is there not still someone of the house of Saul, to whom I may show the kindness of God?\\” Indeed, nothing compares to the unfailing and unlimited goodness of God which comes with His kindness; it is what lifts one from rags to riches, from the ‘gutter-most’ to the uppermost, from pauper to the king’s table, and from Lo Debar to Jerusalem. Jerusalem represented a place of peace, of royalty and of fellowship with God; a place where nothing is missing.\\n\\tPerhaps you can identify with Mephibosheth; you may presently be in a place where you are living \\“below the bar\\” (a pun on ‘Lo Debar’) in specific areas of your life, a place where there is no advancement for you physically, mentally, emotionally, financially, spiritually, etc. You may feel incapacitated and can’t just move from the ugly situations of life. But, not to worry, God is still in the business of turning lives around – making a 180 degree change a possibility.\\n\\tWhen you are in Lo Debar, you are ‘below the bar’ of every level God wants you to be. It is not God’s best for you as His Blood bought child. His heart is to see you live and walk in the benefits of your redemptive rights. Therefore, He will get you out of yourlow estate as He did Mephibosheth, and cause you to emerge into a new address, a new status, and new places where nothing is missing or broken in Jesus’ name."
        label.numberOfLines = 0
        label.sizeToFit()
        
        return label
    }() // 5
    
    let photoQuote = UIImageView()
    
    let additionalStudy = UILabel()
    let prayerPoints = UILabel()
    let shareLabel = UILabel()
    let donateButton = UIButton()
    let facebookButton = UIButton()
    let twitterButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        navigationController?.hidesBarsOnSwipe = true
        
        configureStackView()
        
//        let data = DataLoader().devotionalData
        
//        print(data)
        
//        bodyText.text = DataLoader().devotionalData
//        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+1000)
        setUpScrollView()

    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        let scrollView = UIScrollView(frame: view.bounds)
//        scrollView.backgroundColor = .systemBackground
//        view.addSubview(scrollView)
//        setUpScrollView()
//        displayDevotionalForToday()
//    }
    

    func setUpScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 4000)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
    
    func configureStackView() {
        contentView.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 10

        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(dateLabel)
        stackView.addArrangedSubview(scriptureSnippet)
        stackView.addArrangedSubview(scriptureReferenceLabel)
        stackView.addArrangedSubview(bodyLabel)
        setStackViewConstraints()
    }
    
    func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            stackView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -25)
        ])
    }
    
//    func addItemsToStackView() {
//        configureMainImageView()
//        configureTitleLabel()
//        configureDateLabel()
//        configureScriptureSnippet()
//        configureScriptureReferenceLabel()
//        configureBodyLabel()
//    }
     
}

/*
 let titleLabel: UILabel = {
     let label = UILabel()
     label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
     label.numberOfLines = 0
     label.sizeToFit()
     label.textColor = UIColor.blue
     label.translatesAutoresizingMaskIntoConstraints = false
     return label
 }()
 */




/*
 display the devotional for each day - update all the labels and images and dates automatically each day
 write function to display the devotional for each day and update daily
 match each devotional to the day/date
 */

/*
 what do i want to happen on the today tab?
 display the devotional for the day
 match the date in the json file with the date for today and display the images, title, body, prayer point, verses, etc for the day
 update automatically everyday - so if you check by 12 am every day it will be a new devotional displaying. the devotional for the day
 
 
 working with the current date - date for today
 working with date swift
 working with current date with json file swift
 
 
 internationalization/Localization - french, spanish, italian, german, Portuguese, 
 Dark mode support
 
 */
