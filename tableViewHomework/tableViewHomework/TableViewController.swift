//
//  TableViewController.swift
//  tableViewHomework
//
//  Created by Kanat Khairushin on 14.11.2025.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayExersices = [Exersices(name: "Приседания со штангой",numberOfApproaches: "4X15", imagename:                    "barbell-full-squat", infoAboutEx: " это многосуставное упражнение, направленное на развитие всей нижней части тела с особым акцентом на квадрицепсы. Их часто называют «королем упражнений» из-за высокой эффективности."), Exersices(name: "Жим штанги на наклонной скамье",numberOfApproaches: "4X12", imagename: "barbell-incline-bench-press", infoAboutEx: "Это упражнение имеет принципиальные отличия от классического выполнения жима лежа, где используется горизонтальная скамья. Основное отличие заключается в том, что в данном упражнении грудные мышцы прорабатываются более эффективно и интенсивно, чем в классическом варианте."),Exersices(name: "Подъем гантелей на бицепс стоя",numberOfApproaches: "3X12", imagename: "dumbbell-bicep-curl",infoAboutEx: " базовое изолирующее упражнение, выполняемое в положении стоя с гантелями в руках. Чтобы выполнить его правильно, встаньте прямо, держа гантели вдоль корпуса, ноги на ширине плеч."),Exersices(name: "скручивание на верхнем блоке",numberOfApproaches: "5X15", imagename:"molitva",infoAboutEx: "то изолирующее упражнение, которое чаще всего выполняют для развития силы, стабильности и рельефа мышц живота. "),Exersices(name: "Тяга штанги в наклоне",numberOfApproaches: "4X12", imagename:                    "pendlay-row",infoAboutEx: "идеальное упражнение для построения спины, особенно когда выбрана правильная вариация. Однако это может быстро усложниться, если учесть огромное количество существующих вариантов."),Exersices(name: "Подтягивание на перекладине",numberOfApproaches: "4X15", imagename:"pull-up",infoAboutEx: "это силовое упражнение, при котором вы поднимаете своё тело из положения виса, пока подбородок не окажется выше перекладины."),Exersices(name: "Тяга гантели одной рукой в наклоне ",numberOfApproaches: "4X12", imagename:                    "single-arm-dumbbell-row",infoAboutEx: "это упражнение для мышц спины. Для его выполнения займите устойчивое положение, например, упершись коленом и рукой в скамью, держа спину прямой и корпус примерно параллельно полу. "),Exersices(name: "Тяга Т грифа",numberOfApproaches: "4X12", imagename:                    "t-bar-row-muscles",infoAboutEx: "это базовое упражнение для мышц спины, которое выполняется в специальном тренажёре или со штангой, упирая её в угол.")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayExersices.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayExersices[indexPath.row].name
        let labelApproaches = cell.viewWithTag(1001) as! UILabel
        labelApproaches.text = arrayExersices[indexPath.row].numberOfApproaches
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: arrayExersices[indexPath.row].imagename)
        
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 152
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController")as! ViewController
        navigationController?.show(vc, sender: self)
        vc.exersices = arrayExersices[indexPath.row]
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
