//
//  Screen.swift
//  Onboarding
//
//  Created by Tong Viet Dung on 31/10/2024.
//

import Foundation
struct Screen {
    var firstLabel: String
    var secondLabel: String
    var imageView: String
    var backgroundColor: String
}

#if DEBUG
extension Screen{
    static var data = [
        Screen(firstLabel: "Track your work and get the result", secondLabel: "Remember to keep track of your professional accomplishments.", imageView: "image", backgroundColor: "FirstBackground"),
        Screen(firstLabel: "Stay organized with team", secondLabel: "But understanding the contributions our colleagues make to our teams and companies", imageView: "image2", backgroundColor: "SecondBackground"),
        Screen(firstLabel: "Get notified when work happens", secondLabel: "Take control of notifications, collaborate live or on your own time", imageView: "image3", backgroundColor: "ThirdBackground"),
    ]
}
#endif
