//
//  ViewController.swift
//  App
//
//  Created by Eyad Heikal on 7/18/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    var segmentControl: SegmentedControl!
    var present: MainPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        present = MainPresenter(self)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PhotosCell", bundle: nil), forCellReuseIdentifier: "PhotosCell")
        tableView.register(UINib(nibName: "AboutCell", bundle: nil), forCellReuseIdentifier: "AboutCell")
        tableView.register(UINib(nibName: "ReviewCell", bundle: nil), forCellReuseIdentifier: "ReviewCell")
        tableView.register(UINib(nibName: "AddReviewCell", bundle: nil), forCellReuseIdentifier: "AddReviewCell")
        tableView.register(UINib(nibName: "PriceCell", bundle: nil), forCellReuseIdentifier: "PriceCell")
        tableView.register(UINib(nibName: "DateCell", bundle: nil), forCellReuseIdentifier: "DateCell")
        tableView.register(UINib(nibName: "BookCell", bundle: nil), forCellReuseIdentifier: "BookCell")


        
        segmentControl = SegmentedControl(items: present.getSegments())
        segmentControl.addTarget(self, action: #selector(ViewController.reloadTableView(_:)), for: .valueChanged)
    }
    

}



extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 0
        }
        switch segmentControl?.selectedSegmentIndex {
        case 0:
            return 2
        case 1:
            return 9
        case 2:
            return 7
        default:
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch segmentControl?.selectedSegmentIndex {
        case 0:
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell") as? AboutCell
                cell?.aboutLabel.text = present.getAboutLabel()
                return cell ?? UITableViewCell()
            } else {
                return tableView.dequeueReusableCell(withIdentifier: "PhotosCell") ?? UITableViewCell()
            }
        case 1:
            if indexPath.row == 0 {
                return tableView.dequeueReusableCell(withIdentifier: "PriceCell") ?? UITableViewCell()
            } else if indexPath.row < 8 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "DateCell") as? DateCell
                cell?.dayLabel.text = present.getDays()[indexPath.row - 1]
                return cell ?? UITableViewCell()
            } else {
                return tableView.dequeueReusableCell(withIdentifier: "BookCell") ?? UITableViewCell()
            }
        case 2:
            if indexPath.row < 6 {
                return tableView.dequeueReusableCell(withIdentifier: "ReviewCell") ?? UITableViewCell()
            } else {
                return tableView.dequeueReusableCell(withIdentifier: "AddReviewCell") ?? UITableViewCell()
            }
        default:
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {

            let view  = UITableViewHeaderFooterView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 200))
            let image = UIImage(named: "Untitled.png")
            let imageView = AboutPhotos(image: image)
            //imageView.frame.size = CGSize(width: tableView.frame.width - 20, height: 200)
            imageView.frame = CGRect(x: 20, y: 20, width: tableView.frame.width - 40, height: 200).inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 40, right: 0))
            view.addSubview(imageView)
            
            return view
        }

        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 65))
        view.backgroundColor = .white
        
        segmentControl.frame = CGRect(x: 20, y: 10, width: view.frame.width - 40, height: view.frame.height - 30)
        //segmentControl = SegmentedControl(frame: CGRect(x: 20, y: 10, width: view.frame.width - 40, height: view.frame.height - 30))
        
        view.addSubview(segmentControl)

        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 200
        }
        
        return 50
    }
    
    
    @objc func reloadTableView(_ : UIViewController) {
        tableView.reloadData()
    }
    
    
}
