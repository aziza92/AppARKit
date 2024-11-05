//
//  ViewController+ARSCNViewDelegate.swift
//  AppARKit
//
//  Created by KARMANI Aziza.
//

import SceneKit
import ARKit


extension ViewController: ARSCNViewDelegate{
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor){
        
        /// flat surface
        guard anchor is ARPlaneAnchor else {return}
        print("horizontal")
        
        let planeAnchor = anchor as! ARPlaneAnchor
        
        let planeNode = createPlane(planeAnchor:  planeAnchor)
        node.addChildNode(planeNode)
        
    }
    
    /// adaptation de grid avec le surface (petit / grand ) ::::
    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor){
        /// flat surface
        guard anchor is ARPlaneAnchor else {return}
        print("horizontal surface updated")
        
        let planeAnchor = anchor as! ARPlaneAnchor
        
        node.enumerateChildNodes { (childNode, _) in
            childNode.removeFromParentNode()
        }
        
        let planeNode = createPlane(planeAnchor:  planeAnchor)
        
        node.addChildNode(planeNode)
    }
    
    //// Remove Plane ::::
    func renderer(_ renderer: any SCNSceneRenderer, didRemove node: SCNNode, for anchor: ARAnchor) {
        
        guard anchor is ARPlaneAnchor else {return}
        
        node.enumerateChildNodes { (childNode, _) in
            childNode.removeFromParentNode()
        }
    }
    
    /// plane Creation ::::
    func createPlane(planeAnchor: ARPlaneAnchor) -> SCNNode{
        let plane = SCNPlane(width: CGFloat(planeAnchor.planeExtent.width), height: CGFloat(planeAnchor.planeExtent.height))
        
        /// Image of surf grid
        plane.firstMaterial?.diffuse.contents = UIImage(named: "grid")
        
        /// show the DoubleSided
        plane.firstMaterial?.isDoubleSided = true
        
        
        let planeNode = SCNNode(geometry: plane)
        
        planeNode.position = SCNVector3(planeAnchor.center.x, planeAnchor.center.y, planeAnchor.center.z)
        
        /// planeNode.eulerAngles.x = .pi / 2
        
        planeNode.eulerAngles.x = GLKMathDegreesToRadians(-90)
        
        return planeNode
    }
    
}
