//
//  MovieDetailsViewController.swift
//  MoviesApp
//
//  Created by Leonarda Gjenero on 31.03.2022..
//
import Foundation

import UIKit
import SnapKit

class MovieDetailViewController: UIViewController {
   
    //views
    private var mainInfo: UIView!
    private var overview: UIView!
    
    private var info:UIView!
    private var text:UIView!
    
    //main info view
    var movieImage: UIImageView!
    var score: UILabel!
    var scoreLabel: UILabel!
    var movieTitle: UILabel!
    var year: UILabel!
    var date: UILabel!
    var genre: UILabel!
    var duration: UILabel!
    var favButton: UIButton!
    
    //overview view
    var overviewLabel: UILabel!
    var movieDescription: UILabel!
    
    var name1:UILabel!
    var job1:UILabel!
    var name2:UILabel!
    var job2:UILabel!
    var name3:UILabel!
    var job3:UILabel!
    var name4:UILabel!
    var job4:UILabel!
    var name5:UILabel!
    var job5:UILabel!
    var name6:UILabel!
    var job6:UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        buildViews()
        addConstraints()

        

        }
    

    private func buildViews() {
        
        mainView()
        overviewView()
    }
    
    
    private func mainView(){
        mainInfo=UIView()
        movieImage = UIImageView(image: UIImage(named: "ironman")!)
        movieImage.contentMode = .scaleAspectFill
        movieImage.clipsToBounds = true
        mainInfo.addSubview(movieImage)
        view.addSubview(movieImage)
        
        initMainView()
       
        mainInfo.addSubview(score)
        mainInfo.addSubview(scoreLabel)
        mainInfo.addSubview(movieTitle)
        mainInfo.addSubview(year)
        mainInfo.addSubview(date)
        mainInfo.addSubview(genre)
        mainInfo.addSubview(duration)
        view.addSubview(mainInfo)
    }
    
    private func overviewView(){
        overview=UIView()
        overview.backgroundColor = .blue
        
        initOverview()
        overview.addSubview(overviewLabel)
        view.addSubview(overview)
        
    
        
        
       
        
        overview.addSubview(movieDescription)
        overview.addSubview(name1)
        overview.addSubview(job1)
        overview.addSubview(name2)
        overview.addSubview(job2)
        overview.addSubview(name3)
        overview.addSubview(job3)
        overview.addSubview(name4)
        overview.addSubview(job4)
        overview.addSubview(name5)
        overview.addSubview(job5)
        overview.addSubview(name6)
        overview.addSubview(job6)
        
    }

    
    private func addConstraints(){
        
        mainInfo.snp.makeConstraints({
            
            $0.leading.top.equalTo(view.safeAreaLayoutGuide)
            $0.width.equalTo(view)
            $0.height.equalTo(view.safeAreaLayoutGuide).multipliedBy(0.5)
        })
           
       overview.snp.makeConstraints({
            $0.top.equalTo(mainInfo.snp.bottom)
            $0.width.equalTo(view)
            $0.height.equalTo(view.safeAreaLayoutGuide).multipliedBy(0.5)
        })
        
        
        //maininfo
        movieImage.snp.makeConstraints{
            $0.top.bottom.trailing.leading.equalTo(mainInfo)
        }

        score.snp.makeConstraints{
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.bottom.equalTo(movieTitle.snp.top)
        }
        
        scoreLabel.snp.makeConstraints{
            $0.leading.equalTo(score.snp.trailing).offset(20)
            $0.bottom.equalTo(movieTitle.snp.top)
        }
        
        movieTitle.snp.makeConstraints{
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.bottom.equalTo(date.snp.top).offset(-5)
        }
        
        year.snp.makeConstraints{
            $0.bottom.equalTo(date.snp.top).offset(-5)
            $0.leading.equalTo(movieTitle.snp.trailing).offset(10)
        }
        
        date.snp.makeConstraints{
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.bottom.equalTo(genre.snp.top)
        }
        
        genre.snp.makeConstraints{
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.bottom.equalTo(mainInfo.snp.bottom).offset(-50)
        }
        
        duration.snp.makeConstraints{
            $0.leading.equalTo(genre.snp.trailing).offset(10)
            $0.bottom.equalTo(mainInfo.snp.bottom).offset(-50)
        }
        
        //overview
        overviewLabel.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.top.equalTo(overview.snp.top).offset(20)
        }
        movieDescription.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.top.equalTo(overviewLabel.snp.bottom).offset(10)
        }
        
        name1.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.top.equalTo(movieDescription.snp.bottom).offset(10)
        }
        job1.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.top.equalTo(name1.snp.bottom)
        }
        
        name2.snp.makeConstraints {
            $0.leading.equalTo(name1.snp.trailing).offset(30)
            $0.top.equalTo(movieDescription.snp.bottom).offset(10)
        }
        job2.snp.makeConstraints {
            $0.leading.equalTo(name1.snp.trailing).offset(30)
            $0.top.equalTo(name2.snp.bottom)
        }
        name3.snp.makeConstraints {
            $0.leading.equalTo(name2.snp.trailing).offset(30)
            $0.top.equalTo(movieDescription.snp.bottom).offset(10)
        }
        job3.snp.makeConstraints {
            $0.leading.equalTo(name2.snp.trailing).offset(30)
            $0.top.equalTo(name3.snp.bottom)
        }
        name4.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.top.equalTo(job1.snp.bottom).offset(15)
        }
        job4.snp.makeConstraints {
            $0.leading.equalTo(view.snp.trailing).offset(20)
            $0.top.equalTo(name4.snp.bottom).offset(15)
        }
        
        name5.snp.makeConstraints {
            $0.leading.equalTo(name1.snp.trailing).offset(30)
            $0.top.equalTo(job1.snp.bottom).offset(15)
        }
        job5.snp.makeConstraints {
            $0.leading.equalTo(job5.snp.trailing).offset(30)
            $0.top.equalTo(name5.snp.bottom)
        }
        name6.snp.makeConstraints {
            $0.leading.equalTo(name2.snp.trailing).offset(30)
            $0.top.equalTo(job1.snp.bottom).offset(15)
        }
        job6.snp.makeConstraints {
            $0.leading.equalTo(job2.snp.leading).offset(20)
            $0.top.equalTo(name3.snp.bottom)
        }
    
    }
           
       
    func initMainView(){
        score = UILabel()
        scoreLabel = UILabel()
        movieTitle = UILabel()
        year = UILabel()
        date = UILabel()
        genre = UILabel()
        duration = UILabel()
        
        score.text="76%"
        scoreLabel.text="User Score"
        movieTitle.text="Iron man"
        year.text="(2008)"
        date.text="05/02/2008(US)"
        genre.text="Action, SF, Adventure"
        duration.text="2h 6m"
        
        score.font=UIFont.systemFont(ofSize: 15)
        scoreLabel.font=UIFont.boldSystemFont(ofSize: 13)
        movieTitle.font=UIFont.boldSystemFont(ofSize: 25)
        year.font=UIFont.systemFont(ofSize: 25)
        date.font=UIFont.systemFont(ofSize: 14)
        genre.font=UIFont.systemFont(ofSize: 14)
        duration.font=UIFont.boldSystemFont(ofSize: 14)
        
    }
    
    
    func initOverview(){
        overviewLabel=UILabel()
        overviewLabel.text="Overview"
        overviewLabel.font=UIFont.boldSystemFont(ofSize: 15)
        
        
        
        movieDescription=UILabel()
        movieDescription.numberOfLines = 0
        name1=UILabel()
        job1=UILabel()
        name2=UILabel()
        job2=UILabel()
        name3=UILabel()
        job3=UILabel()
        name4=UILabel()
        job4=UILabel()
        name5=UILabel()
        job5=UILabel()
        name6=UILabel()
        job6=UILabel()
        
        overviewLabel.text="Overview"
        movieDescription.text = "After being held captive in an Afgan cave, billionare engineer Tony Stark creates an unique weaponized suit of armor to fight evil."
        name1.text="Dan Heck"
        job1.text="Characters"
        name2.text="Jack Kirby"
        job2.text="Characters"
        name3.text="Jon Favreau"
        job3.text="Director"
        name4.text="Dan Heck"
        job4.text="Screenplay"
        name5.text="Jack Marcum"
        job5.text="Screenplay"
        name6.text="Matt Holloway"
        job6.text="Screenplay"
        
        overviewLabel.font=UIFont.boldSystemFont(ofSize: 15)
        movieDescription.font = UIFont.systemFont(ofSize: 14)
        name1.font=UIFont.boldSystemFont(ofSize: 14)
        job1.font=UIFont.systemFont(ofSize: 14)
        name2.font=UIFont.boldSystemFont(ofSize: 14)
        job2.font=UIFont.systemFont(ofSize: 14)
        name3.font=UIFont.boldSystemFont(ofSize: 14)
        job3.font=UIFont.systemFont(ofSize: 14)
        name4.font=UIFont.boldSystemFont(ofSize: 14)
        job4.font=UIFont.systemFont(ofSize: 14)
        name5.font=UIFont.boldSystemFont(ofSize: 14)
        job5.font=UIFont.systemFont(ofSize: 14)
        name6.font=UIFont.boldSystemFont(ofSize: 14)
        job6.font=UIFont.systemFont(ofSize: 14)
    }


    
}


