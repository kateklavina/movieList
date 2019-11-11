//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Dace Laizane on 11/11/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    var movieList = [
        "12 Angry Men (1957) - Action",
        "Pulp Fiction (1994) - Action",
        "Schindler's List (1993) - History",
        "The Dark Knight (2008) - Action ",
        "The Godfather (1972) - Drama",
        "The Godfather- Part II (1974) - Drama",
        "The Lord of the Rings- The Return of the King (2003) - Drama",
        "The Shawshank Redemption (1994) - Drama"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
    //        return trackList.count
            return movieList.count
        }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = movieList[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: movieList[indexPath.row])

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

  

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
            
            
            let curentTrack = movieList.remove(at: fromIndexPath.row)
            movieList.insert(curentTrack, at: to.row)
            tableView.reloadData()

        }
        override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            return .none
        }
    

    
    // MARK: - Navigation

 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  // Get the new view controller using segue.destination.
  // Pass the selected object to the new view controller.
  if let indexPath = tableView.indexPathForSelectedRow{
      // Get the new view controller using segue.destination.
      let detailVC = segue.destination as! DetailViewController
      // Pass the selected object to the new view controller.
    detailVC.myMovieString = movieList[indexPath.row]
    
     }}

}
