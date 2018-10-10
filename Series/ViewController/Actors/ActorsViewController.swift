//
//  ActorsViewController.swift
//  Series
//
//  Created by DAVID ANGULO CORCUERA on 3/10/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit

class ActorsViewController: UIViewController {
    @IBOutlet weak var tableViewActors: UITableView!
     internal var arr_actors: [Actors] = []
    
    convenience init(actors: [Actors]){
        self.init()
        self.arr_actors = actors
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Actors"
        registercells()
        
        // Do any additional setup after loading the view.
    }
    private func registercells(){
        let int_identifier = "ActorsTableViewCell"
        let cellNib = UINib(nibName: int_identifier, bundle: nil)
        tableViewActors.register(cellNib, forCellReuseIdentifier: "ActorsTableViewCell")
        
        let int_identifierEmpty = "EmptyStatusTableViewCell"
        let cellNibEmpty = UINib(nibName: int_identifierEmpty, bundle: nil)
        tableViewActors.register(cellNibEmpty, forCellReuseIdentifier: "EmptyStatusTableViewCell")
        
        
        
        tableViewActors.register(cellNib, forCellReuseIdentifier: int_identifier)
         tableViewActors.register(cellNibEmpty, forCellReuseIdentifier: int_identifierEmpty)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}
extension ActorsViewController:
UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(arr_actors.count > 0){
        return arr_actors.count
        }
        else{
            return 1
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(arr_actors.count > 0){
           return 55.0
        }
        else{
            return 261.0
        }
        
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(arr_actors.count > 0){
            let cell:ActorsTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "ActorsTableViewCell", for: indexPath) as? ActorsTableViewCell)!
            let actor = arr_actors[indexPath.row]
            cell.lblName.text = actor.str_name
            cell.imageViewAvatar.image = UIImage(named:actor.str_image)
            return cell
        }
        else{
            let cell:EmptyStatusTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "EmptyStatusTableViewCell", for: indexPath) as? EmptyStatusTableViewCell)!
            cell.delegate = self
            return cell
        }
       
        
        
    }
    
}
extension ActorsViewController: EmptyStatusTableViewCellDelegate{
    func emptyStatusTableViewCellDidPressBack(cell: EmptyStatusTableViewCell) {
        navigationController?.popViewController(animated: true)
    }
    
    }

