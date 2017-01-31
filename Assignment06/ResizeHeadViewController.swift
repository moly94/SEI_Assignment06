//
//  ResizeHeadViewController.swift
//  Assignment06
//
//  Created by Student on 31/01/2017.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
import UIKit

class ResizeHeadViewController: UIViewController, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {
    

    
    private let rainboheight: CGFloat=280
    private let rainboCutAway: CGFloat=80
    
    var headerMaskLayer: CAShapeLayer!
    
    var myCell: UITableViewCell!
    
    @IBOutlet var tableView: UITableView!
    
    var headerView: UIView!
    
    var tableContent: [String] = ["Kevin", "Pirklbauer"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        headerView=tableView.tableHeaderView
        
        tableView.rowHeight=UITableViewAutomaticDimension
        //UIStatusbar=UIStatusBarStyle.lightContent
        tableView.tableHeaderView=nil
        
        tableView.addSubview(headerView)
        
        let effectiveHeight = rainboheight-rainboCutAway/2
        tableView.contentInset = UIEdgeInsets(top: effectiveHeight, left:0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x:0,y:-effectiveHeight)
        
        headerMaskLayer = CAShapeLayer()
        headerMaskLayer.fillColor = UIColor.black.cgColor
        
        headerView.layer.mask = headerMaskLayer
        updateHeaderView()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableContent.count
    }
   
    
    func updateHeaderView(){
        
        let effectiveHeight = rainboheight-rainboCutAway/2
        var headerRect = CGRect(x: 0, y: -effectiveHeight, width: tableView.bounds.width, height: rainboheight)
        if tableView.contentOffset.y < -effectiveHeight {
            headerRect.origin.y=tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y+rainboCutAway/2
        }
        
        headerView.frame=headerRect
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: headerRect.width, y:0))
        path.addLine(to: CGPoint(x: headerRect.width, y: headerRect.height))
        path.addLine(to: CGPoint(x:0, y: headerRect.height-rainboCutAway))
        headerMaskLayer?.path = path.cgPath
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return myCell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }

    
}
