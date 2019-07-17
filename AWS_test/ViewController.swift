//
//  ViewController.swift
//  AWS_test
//
//  Created by GT on 2019/5/27.
//  Copyright © 2019年 GT. All rights reserved.
//

import UIKit
import SceneKit
import ARKit
import AWSS3  // 導入ＡＷＳ包
import AWSCore
import AWSCognito

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Configure AWS Cognito Credentials
        
        
        print("start")
        
        let originalDict = ["cup1":"apple", "cup2":"banana", "3":"orange"]
        let name = "cup123"
        
        if (originalDict["1"] != nil){
            print(originalDict["1"])
        }
        if (originalDict["4"] != nil){
            print(originalDict["4"])
        }
        
        if(name.contains("cup")){
            print("yes")
        }

        print("done")
    }
        
        /*
        
        print("start")
        let queue1 = DispatchQueue(label: "com.appcoda.myqueue" ,qos: DispatchQoS.userInteractive)
        let queue2 = DispatchQueue(label: "com.appcoda.myqueue")
        
        let accessKey = "AKIA37LQEHK2R7UNMHM2"
        let secretKey = "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"
        
        let credentialsProvider = AWSStaticCredentialsProvider(accessKey: accessKey, secretKey: secretKey)
        let configuration = AWSServiceConfiguration(region: AWSRegionType.APNortheast1, credentialsProvider: credentialsProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        
        
        AWSS3.register(with: configuration!, forKey: "defaultKey")
        let s3 = AWSS3.s3(forKey: "defaultKey")
        
        let listRequest: AWSS3ListObjectsRequest = AWSS3ListObjectsRequest()
        
        queue1.async {
            listRequest.bucket = "howtest.bk"
            listRequest.prefix = "GTtest_arkit_model"
            
        }
        
        //GTtest_arkit_model
        
        
        queue2.async{
        
        s3.listObjects(listRequest).continueWith { (task) -> AnyObject? in
            if let error = task.error {
                print("listObjects failed: [\(error)]")
            }
            else{
                print("listObjects succeeded")
                for object in (task.result?.contents)! {
                    
                    print("Object key = \(object.key!)")
                    print(object.key!.contains("cup.scn"))
                    
                }
            }
            /*
            for object in (task.result?.contents)! {
                
                print("Object key = \(object.key!)")
            }
 */
            
            return nil
        }
            
        }
        
        print("done")
    }
 */
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

}

