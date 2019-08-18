//
//  HWTableViewController.swift
//  HWToDoList
//
//  Created by Chang Sophia on 4/24/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class HWTableViewController: UITableViewController,  DetailTableViewControllerDelegate {
    
    var isDone = [Bool]()
  
    var records = [Record]()
    
    func update(record: Record) {
    
          if let indexPath = tableView.indexPathForSelectedRow {
            records[indexPath.row] = record
            tableView.reloadRows(at: [indexPath], with: .automatic)
            Record.saveToFile(records: records)
        } else {
            // 新增一筆資料到第一列
            records.insert(record, at: 0)
            let newIndexPath = IndexPath(row: 0, section: 0)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
            Record.saveToFile(records: records)
        }
    }
    
    func initHomeworks(){
        records.append(Record(title:"#85 下拉放大圖片(stretchable)的 scroll view"))
        records.append(Record(title:"#84 製作文青的 IG 透卡 App"))
        records.append(Record(title:"#83 製作 IG 滑動後 profile tab 卡在上方的效果"))
        records.append(Record(title:"#82 利用 CABasicAnimation & CAShapeLayer 繪製線條動畫"))
        records.append(Record(title:"#81 製作 Google 搜尋 App — 搭配 Google Custom Search JSON API"))
        records.append(Record(title:"#80 創作有梗的 iOS App 遊戲"))
        records.append(Record(title:"#79 iOS App 網路資料下載時該注意的 13 點功能細節"))
        records.append(Record(title:"#78 利用delegate在controller間溝通＆傳資料的步驟說明"))
        records.append(Record(title:"#77 搭配UIImgagePickerController選照片"))
        records.append(Record(title:"#76 scroll view delegate-分頁和圖片的縮放"))
        records.append(Record(title:"#75 單位轉換的Measurement，Unit&MeasurementFormatter"))
        records.append(Record(title:"#74 利用CIFilter實現美麗的圖片濾鏡"))
        records.append(Record(title:"#73 包含左右滑動區塊的table view"))
        records.append(Record(title:"#72 化身Youtuber，錄製iOS　App開發教學影片"))
        records.append(Record(title:"#71 大學的Swift iOS App課程作業"))
        records.append(Record(title:"#70 利用NSTextAttachement，製作包含圖片的字串"))
        records.append(Record(title:"#69 10YearChallenge，時間都去哪了"))
        records.append(Record(title:"#68 利用unwind segue將表格選擇的結果回傳－App功能實作解密１"))
        records.append(Record(title:"#67 研究Unwrap App，一邊學swift，一邊研究App怎麼做出來的"))
        records.append(Record(title:"#66 製作拍立得App學習if else"))
        records.append(Record(title:"#65 模仿製作iOS內建的Clock App"))
        records.append(Record(title:"#64 定義function印出讓自己一秒落淚的情歌歌詞"))
        records.append(Record(title:"#63 情歌對唱的聊天室畫面－cell的auto layout"))
        records.append(Record(title:"#62 透過present顯示iOS SDK內建的１０種controller"))
        records.append(Record(title:"#61 實作iOS時鐘App的碼錶和倒數計時器"))
        records.append(Record(title:"#60 畫星星蘋果"))
        records.append(Record(title:"#59 製作Stanford iOS課程裡提到的翻牌記憶遊戲，Concentration App"))
        records.append(Record(title:"#58 Swift的九九乘法表App"))
        records.append(Record(title:"#57 桌遊棋類App比方蛇梯棋Snakes&Ladders"))
        records.append(Record(title:"#56 消失的獨角獸－WWDC18 App"))
        records.append(Record(title:"#55 開不了口的告白＆我們一起學貓叫"))
        records.append(Record(title:"#54 愛你最好的距離slider練習"))
        records.append(Record(title:"#53 照片牆(Grid Photo Wall)"))
        records.append(Record(title:"#52 運用UIBezierPath繪製可愛圖案，比方雪人，米奇＆可愛動物"))
        records.append(Record(title:"#51 實作Table View的基本功能"))
        records.append(Record(title:"#50 to-do list的完成打勾"))
        records.append(Record(title:"#49 Storyboard有聲書App"))
        records.append(Record(title:"#48 骰子轉轉轉和骰子吹牛"))
        records.append(Record(title:"#47 反轉古人撩妹金句"))
        records.append(Record(title:"#46 利用marvel的POP App做一個prototype app"))
        records.append(Record(title:"#45 愛我，不愛我的摘花瓣App"))
        records.append(Record(title:"#44 利用becomeFirstResponder練習鍵盤的顯示"))
        records.append(Record(title:"#43 從程式製作國旗圖案"))
        records.append(Record(title:"#42 利用iOS SDK各式型別生成東西，設定它的屬性和呼叫方法"))
        records.append(Record(title:"#41 文字的縮放和字數-UISlider & UITextField練習"))
        records.append(Record(title:"#40 世界末日倒數計時-Date Picker和Date的練習"))
        records.append(Record(title:"#39 以static cells製作數量內容固定的表格"))
        records.append(Record(title:"#38 愛情的模樣-點選Segmented Control和Button更換圖片"))
        records.append(Record(title:"#37 利用scroll view實現人體分割魔術"))
        records.append(Record(title:"#36 研讀一本iOS App開發入門原文書"))
        records.append(Record(title:"#35 換算App，比方小費，BMI，匯率"))
        records.append(Record(title:"#34 數學小神童"))
        records.append(Record(title:"#33 顯示時間的正妹帥哥時計"))
        records.append(Record(title:"#32 研究GitHub上Udacity學生們的iOS App程式"))
        records.append(Record(title:"#31 製作iPhone內建的iOS App畫面"))
        records.append(Record(title:"#30 熟練iOS SDK內建的data source & delegate"))
        records.append(Record(title:"#29 開發Swift Playground程式，免費獲得WWDC門票"))
        records.append(Record(title:"#28 利用Notification Service Extension解密摩斯密碼(morse code)推播和下載圖片"))
        records.append(Record(title:"#27 利用Codable儲存過年紅包"))
        records.append(Record(title:"#26 研究Apple官方的MusicKit Sample Code"))
        records.append(Record(title:"#25 選擇題App"))
        records.append(Record(title:"#24 Storyboard電子書App"))
        records.append(Record(title:"#23 利用Date Picker計算生命靈數"))
        records.append(Record(title:"#22 二十一點亞洲慈善撲克王大賽"))
        records.append(Record(title:"#21 存取檔案實作單字App"))
        records.append(Record(title:"#20 訂飲料App，上傳資料到後台"))
        records.append(Record(title:"#19 串接第三方API，解析JSON資料，轉換成自訂型別顯示"))
        records.append(Record(title:"#18 世大運主題畫面截圖分享"))
        records.append(Record(title:"#17 模仿FB超準的面相算命App"))
        records.append(Record(title:"#16 心理測驗或問卷App"))
        records.append(Record(title:"#15 化學元素週期表-用prepare傳遞資料"))
        records.append(Record(title:"#14 搭配Sketch和Zeplin，製作iOS App畫面"))
        records.append(Record(title:"#13 彼得潘的影子-調色大師"))
        records.append(Record(title:"#12 計算機App"))
        records.append(Record(title:"#11 瘋狂購物App-UISepper和數字變字串練習"))
        records.append(Record(title:"#10 猜拳遊戲"))
        records.append(Record(title:"#09 鐵板神算App(回答問題的笨AI機器人)"))
        records.append(Record(title:"#08 甜蜜的Apple Pie(恐怖的Hangman)"))
        records.append(Record(title:"#07 Light App"))
        records.append(Record(title:"#06 猜數字和1A2B App"))
        records.append(Record(title:"#05 Auto Layout練習"))
        records.append(Record(title:"#04 用view拼湊漂亮的圖案"))
        records.append(Record(title:"#03 問答題"))
        records.append(Record(title:"#02 擇偶條件App"))
        records.append(Record(title:"#01 給我一首歌的時間做App"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.tableView.backgroundView = UIImageView(image: UIImage(named: "banner"))
        self.tableView.backgroundView?.alpha = 0.5
        
      initHomeworks()
        
         isDone = Array(repeating: false, count: records.count)
        if let records = Record.readFromFile() {
            self.records = records
        
        
    }
    }
    // MARK: - Table view datøa source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return records.count
    
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
    
        let record = records[indexPath.row]
        cell.textLabel?.text = record.title
        
        return cell
    }

 
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let check = tableView.cellForRow(at: indexPath)
           
            tableView.reloadData()
            check?.accessoryType = .checkmark
        }
    
   
    
    
    // Override to support editing the table view.
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {    
            let alert  = UIAlertController(title: "Are you sure you want to delete?", message: "", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) -> () in
                self.records.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                Record.saveToFile(records: self.records)
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(okAction)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
    }
     
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? DetailTableViewController {
            controller.delegate = self
            
            // 若是點選cell，則將cell的資料傳到過去
            if let row = tableView.indexPathForSelectedRow?.row {
                controller.record = records[row]
            }
        }
        }
    
}

