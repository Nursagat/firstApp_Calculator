//
//  TableViewController.swift
//  tableView
//
//  Created by Nursa Kusain on 08.10.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayPersons = [Person(name:"Luffy", surname: "Monkey D.", imagename: "luffy", personinfo: "Капитан команды и пиратского корабля,мечтает найти Ван пис и стать королем пиратов"),
                        Person(name:"Zorro", surname: "Roronoa", imagename: "zorro", personinfo: "Правая рука капитана Луффи, бывший охотник на пиратов. Мечтает стать самым сильным мечником в мире"),
                        Person(name:"Sanji", surname: "Winsmoke", imagename: "sanji", personinfo: "Кок пиратского коробля, имеет слабость к женскому полу"),
                        Person(name:"Jinbei", surname: "Fishman", imagename: "jinbei", personinfo: "Рыбо-человек, бывший Шичибукай, присоединился к команде Луффи после побега из тюрьмы Маринфорд"),
                        Person(name:"Robin", surname: "Niko", imagename: "robin", personinfo: "Одна из немногих кто умеет читать древние тексты Понеглифов, из за этого считается одним из опасных врагов мирового правительство"),
                        Person(name:"Usopp", surname: "Sogeking", imagename: "usop", personinfo: "Снайпер команды мугивар, невероятно везучь. Не путать с Согекингом))"),
                        Person(name:"Nami", surname: "Cat-stealer", imagename: "nami", personinfo: "Навигатор пиратсого коробля, так же известна как Кошка-воровка Нами. Очень любит деньги)")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func addPerson(_ sender: Any) {
        arrayPersons.append(Person(name: "Username", surname: "Usersurname", imagename: "avatar"))
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPersons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        
        let label = cell.viewWithTag(1001) as! UILabel
        label.text = arrayPersons[indexPath.row].name
         
        let labelSurname = cell.viewWithTag(1002) as! UILabel
        labelSurname.text = arrayPersons[indexPath.row].surname

        let imageView = cell.viewWithTag(1003) as! UIImageView
        imageView.image = UIImage(named: arrayPersons[indexPath.row].imagename)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.person = arrayPersons[indexPath.row]
        
        vc.person.personinfo = arrayPersons[indexPath.row].personinfo
        
        navigationController?.show(vc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            arrayPersons.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
