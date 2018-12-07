//
//  ViewController.swift
//  MessageCenter
//
//  Created by jfredsoft on 11/07/2018.
//  Copyright (c) 2018 jfredsoft. All rights reserved.
//

import UIKit
import MessageCenter

class ViewController: UIViewController {
    @IBOutlet weak var labelUserId: UILabel!
    @IBOutlet weak var labelConnected: UILabel!
    @IBOutlet weak var buttonJoin: UIButton!
    
    var connectRequest: ConnectionRequest!
    
    @IBAction func onTouchJoinButton(_ sender: UIButton) {
        
//        let title = "Title"
//        let primaryColor = UIColor.green
//        let secondaryColor = UIColor.lightGray
//        
       //ChatViewTheme(title:"hello",primaryColor:.red,secondaryColor:.red)
        
        MessageCenter.openChatView(forChannel: "sendbird_group_channel_2456028_1ef918c0149a1f8b0993ae21cb26fa9c16540a91", withTheme: nil) { (success) in
            
        }
    }
    
    @IBAction func onTouchConnect(_ sender: Any) {
        MessageCenter.connect(with: connectRequest, success: { (userId) in
            print("Connected user: %@", userId);
            self.labelUserId.text = userId
            self.buttonJoin.isEnabled = true
            self.labelConnected.text = "Connected"
        }) { (errorCode, message) in
            print("Error occured: %d %@", errorCode, message)
            self.labelConnected.text = "Can't connect to server..."
        }
        self.labelConnected.text = "Connecting..."
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonJoin.isEnabled = false
        MessageCenter.parentVC = self
        connectRequest = ConnectionRequest(appId: "FE3AD311-7F0F-4E7E-9E22-25FF141A37C0", userId: "rider_sony", accessToken: "4a8f3c197450b4762cd2dcf02a130816a503f4f2", client: ClientType.sendBird)
        
//        connectRequest = ConnectionRequest(appId: "FE3AD311-7F0F-4E7E-9E22-25FF141A37C0", userId: "customer_hs_184890", accessToken: "8b21b79c6a07d74e95cf6c91837ec2a64e9cbc54", client: ClientType.sendBird)
        MessageCenter.connect(with: connectRequest, success: { (userId) in
            print("Connected user: %@", userId);
            self.labelUserId.text = userId
            self.buttonJoin.isEnabled = true
            self.labelConnected.text = "Connected"
        }) { (errorCode, message) in
            print("Error occured: %d %@", errorCode, message)
            self.labelConnected.text = "Can't connect to server..."
        }
        self.labelConnected.text = "Connecting..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

