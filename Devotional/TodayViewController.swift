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
    
    let logoImage = UIImageView()
    let mainImageView = UIImageView()
    let titleLabel = UILabel() // 1
    let dateLabel = UILabel() // 2
    let scriptureSnippet = UILabel() // 3
    let scriptureReferenceLabel = UILabel() // 4
    let bodyLabel = UILabel() // 5
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
        
//        let data = DataLoader().devotionalData
        
//        print(data)
        
//        bodyText.text = DataLoader().devotionalData
//        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+1000)
        setUpScrollView()
        
        configureMainImageView()
        configureTitleLabel()
        configureDateLabel()
        configureScriptureSnippet()
        configureScriptureReferenceLabel()
        configureBodyLabel()
//        displayDevotionalForToday()
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
    
    
//    func displayDevotionalForToday() {
//        if Devotional().month ==
//        configureMainImageView()
//        configureTitleLabel()
//        configureDateLabel()
//        configureScriptureSnippet()
//        configureScriptureReferenceLabel()
//        configureBodyLabel()
//    }

    func setUpScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 4000)
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
        
//        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//
//        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
//        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
//        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    
    func configureMainImageView() {
        contentView.addSubview(mainImageView)
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.image = UIImage(named: "5-january")
        
        NSLayoutConstraint.activate([
            mainImageView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            mainImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            mainImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            mainImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30)
        ])
    }
    
    
    func configureTitleLabel() {
        contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "FROM LO DEBAR TO JERUSALEM"
        titleLabel.font = .boldSystemFont(ofSize: 20)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            titleLabel.heightAnchor.constraint(equalToConstant: 20)
            
        ])
    }
    
    func configureDateLabel() {
        contentView.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.text = "21 October, 2021"
        
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            dateLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func configureScriptureSnippet() {
        contentView.addSubview(scriptureSnippet)
        scriptureSnippet.translatesAutoresizingMaskIntoConstraints = false
        scriptureSnippet.text = "Then 1 the king said, \\“Is there not still someone of the house of Saul, to whom I may show the kindness of God?\\” II Samuel 9:3"
        scriptureSnippet.numberOfLines = 3
        scriptureSnippet.sizeToFit()
        
        NSLayoutConstraint.activate([
            scriptureSnippet.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 30),
            scriptureSnippet.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            scriptureSnippet.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            
        ])
    }
    
    func configureScriptureReferenceLabel() {
        contentView.addSubview(scriptureReferenceLabel)
        scriptureReferenceLabel.translatesAutoresizingMaskIntoConstraints = false
        scriptureReferenceLabel.text = "REFERENCE II Samuel 9:1-13"
//        scriptureReferenceLabel.numberOfLines = 2
        
        NSLayoutConstraint.activate([
            scriptureReferenceLabel.topAnchor.constraint(equalTo: scriptureSnippet.bottomAnchor, constant: 25),
            scriptureReferenceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            scriptureReferenceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            scriptureReferenceLabel.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    func configureBodyLabel() {
        contentView.addSubview(bodyLabel)
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.text = "\\t“Lo Debar\\” was an ancient 1 city east of Jordan. The name means ‘no pasture, no communication, or no word.’ It is a place of negativity, no advancement, and dryness. This had become Mephibosheth’s ‘reality,’ his residence until David sent for him. Mephibosheth was born a prince in the palace, but, through no fault of his, he suffered a great reversal of fortunes. He was forgotten, submerged in filth, dryness, lack, unfruitfulness, lack of communication, and away from the real world. Worst of all, he was lame in both feet and couldn’t help himself even if he wanted to.\\n\\tHowever, despite his helpless situation, when it was his time to move up in life, God brought him into David’s focus, who showed him unusual kindness. The kindness shown to Mephibosheth was purely orchestrated by God as revealed in David’s words, \\“Is there not still someone of the house of Saul, to whom I may show the kindness of God?\\” Indeed, nothing compares to the unfailing and unlimited goodness of God which comes with His kindness; it is what lifts one from rags to riches, from the ‘gutter-most’ to the uppermost, from pauper to the king’s table, and from Lo Debar to Jerusalem. Jerusalem represented a place of peace, of royalty and of fellowship with God; a place where nothing is missing.\\n\\tPerhaps you can identify with Mephibosheth; you may presently be in a place where you are living \\“below the bar\\” (a pun on ‘Lo Debar’) in specific areas of your life, a place where there is no advancement for you physically, mentally, emotionally, financially, spiritually, etc. You may feel incapacitated and can’t just move from the ugly situations of life. But, not to worry, God is still in the business of turning lives around – making a 180 degree change a possibility.\\n\\tWhen you are in Lo Debar, you are ‘below the bar’ of every level God wants you to be. It is not God’s best for you as His Blood bought child. His heart is to see you live and walk in the benefits of your redemptive rights. Therefore, He will get you out of yourlow estate as He did Mephibosheth, and cause you to emerge into a new address, a new status, and new places where nothing is missing or broken in Jesus’ name."
        bodyLabel.numberOfLines = 0
        bodyLabel.sizeToFit()
        
        NSLayoutConstraint.activate([
            bodyLabel.topAnchor.constraint(equalTo: scriptureReferenceLabel.bottomAnchor, constant: 30),
            bodyLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            bodyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
//            bodyLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50)
        ])
    }
    
    func configurePhotoQuote() {
        contentView.addSubview(photoQuote)
        photoQuote.translatesAutoresizingMaskIntoConstraints = false
        photoQuote.image = UIImage(named: "5-january")
        
        NSLayoutConstraint.activate([
            photoQuote.topAnchor.constraint(equalTo: bodyLabel.bottomAnchor, constant: 40),
            photoQuote.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            photoQuote.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30)
        ])
    }
     
}






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
