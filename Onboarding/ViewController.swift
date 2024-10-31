//
//  ViewController.swift
//  Onboarding
//
//  Created by Tong Viet Dung on 31/10/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var startButton: UIButton!

    
    private var index = 0
    private let screen = Screen.data
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextButton.layer.backgroundColor = UIColor.black.cgColor
        nextButton.layer.cornerRadius = 26
        
        startButton.layer.backgroundColor = UIColor.black.cgColor
        startButton.layer.cornerRadius = 26
        
        nextButton.layer.shadowColor = UIColor.gray.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 2.0, height: 5.0)
        nextButton.layer.shadowOpacity = 1.0
        nextButton.layer.shadowRadius = 4.0
        nextButton.layer.masksToBounds = false
        
        startButton.layer.shadowColor = UIColor.gray.cgColor
        startButton.layer.shadowOffset = CGSize(width: 2.0, height: 5.0)
        startButton.layer.shadowOpacity = 1.0
        startButton.layer.shadowRadius = 4.0
        startButton.layer.masksToBounds = false

        loadPage(screen: screen[index])
    }
    
    private func loadPage(screen: Screen){
        pageControl.currentPage = index
        pageControl.backgroundColor = UIColor.clear
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = .white
        view.backgroundColor = UIColor(named: screen.backgroundColor)
        firstLabel.text = screen.firstLabel
        secondLabel.text = screen.secondLabel
        imageView.image = UIImage(named: screen.imageView)
        
        if index == 2{
            skipButton.isHidden = true
            nextButton.isHidden = true
            startButton.isHidden = false
        }else{
            skipButton.isHidden = false
            nextButton.isHidden = false
            startButton.isHidden = true
        }
    }
    
    @IBAction private func nextButtonTapped(_ sender: Any){
        if index >= 0 && index < 2{
            index += 1
            loadPage(screen: screen[index])
        }
    }
    
 
}

