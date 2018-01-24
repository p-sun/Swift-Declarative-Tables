//
//  ViewController.swift
//  FunctionalTableDataMyDemo
//
//  Created by Paige Sun on 2017-12-05.
//

class TableViewController: UIViewController {
	
    let functionalData = FunctionalTableData()
    var tableView = UITableView(frame: CGRect.zero, style: .grouped)
    
    var items: [String] = [] {
        didSet {
            render()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup view
        view?.backgroundColor = .white
        title = "UITableView Demo"
        
        // Setup tableView UI
        view.addSubview(tableView)
        tableView.pinToSuperView()
        
        // Setup functional table data
        functionalData.tableView = tableView
        
        // Use buttons to insert and delete rows
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didSelectAdd))
        let trashButton = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(didSelectTrash))
        navigationItem.rightBarButtonItems = [addButton, trashButton]
    }
    
    @objc private func didSelectAdd() {
        items.append("\(Int(arc4random_uniform(1500)+1))")
    }
    
    @objc private func didSelectTrash() {
        items = []
    }
    
    func render() {
        let rows: [CellConfigType] = items.enumerated().map { index, item in
            return LabelCell(
                key: "id-\(index)",
                style: CellStyle(backgroundColor: .white),
                state: LabelState(text: item),
                cellUpdater: LabelState.updateView)
        }
        
        functionalData.renderAndDiff([
            TableSection(key: "section", rows: rows)
            ])
    }
}
