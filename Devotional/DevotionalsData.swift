//
//  DevotionalsData.swift
//  Devotional
//
//  Created by Femi Aliu on 10/10/2021.
//

import Foundation
/*
// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let month: String
    let devotionals: [Devotional]
}

// MARK: - Devotional
struct Devotional: Codable {
    let image: String
    let title: Title
    let date, scriptureSnippet: String
    let scriptureReference: [ScriptureReference]
    let category: Category
    let body, scripturePhoto: String
    let additionalStudy: [AdditionalStudy]
    let prayerPoint: String
}

enum AdditionalStudy: String, Codable {
    case galatians31314 = "Galatians 3:13-14"
    case psalm11358 = "Psalm 113:5 - 8"
    case romans91516 = "Romans 9:15-16"
}

enum Category: String, Codable {
    case evangelism = "evangelism"
    case faithPrayer = "faith & prayer"
    case familyRelationships = "family & relationships"
    case finances = "finances"
    case healing = "healing"
    case lifeLiving = "life & living"
    case personalDevelopment = "personal development"
    case spiritualGrowth = "spiritual growth"
}

enum ScriptureReference: String, Codable {
    case iiSamuel9113 = "II Samuel 9:1-13"
}

enum Title: String, Codable {
    case fromLoDebarToJerusalem = "FROM LO DEBAR TO JERUSALEM"
}

struct Devotionals: Codable {
    var devotionals = [Devotional]()
}

typealias Welcome = [WelcomeElement]
*/

struct Devotional: Codable {
    var month: String
    var devotionals: [Devotionals]
}

struct Devotionals: Codable {
    let image: String
    let title: String
    let date: String
    let scriptureSnippet: String
    let scriptureReference: [String]
    let category: String
    let body: String
    let scripturePhoto: String
    let additionalStudy: [String]
    let prayerPoint: String
}

enum Category: String, Codable {
    case evangelism = "Evangelism"
    case faithPrayer = "Faith & Prayer"
    case familyRelationships = "Family & Relationships"
    case finances = "Finances"
    case healing = "Healing"
    case lifeLiving = "Life & Living"
    case personalDevelopment = "Personal Development"
    case spiritualGrowth = "Spiritual Growth"
}

/*
enum Benediction: String, Codable {
    case prayerPoint = "Prayer Point"
    case toDo = "To Do"
    case reflection = "Relection"
}

enum Month: String, Codable {
    case january = "January"
    case february = "February"
    case march = "March"
    case april = "April"
    case may = "May"
    case june = "June"
    case july = "July"
    case august = "August"
    case september = "September"
    case october = "October"
    case november = "November"
    case december = "December"
}
*/



