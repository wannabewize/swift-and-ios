//
//  MoviesViewController.swift
//  TableExample
//
//  Created by wannabewize on 2021/07/12.
//

import UIKit

class MoviesViewController: UITableViewController {
    
    let data = [
        "Extraction",
        "The Gentlemen",
        "The Lodge",
        "Once Upon a Time in Hollywood",
        "The Willoughbys",
        "El hoyo",
        "Gisaengchung",
        "Star Wars: Episode IX - The Rise of Skywalker",
        "Dangerous Lies",
        "Knives Out",
        "Arkansas",
        "Avengers: Endgame"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // 섹션의 개수 - 기본이 1개. 생략 가능
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 테이블 뷰에서 Row(셀)의 개수 -> 데이터의 개수
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 스토리보드의 테이블 뷰에 등록한 셀의 ID
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]        
        return cell
    }
}
