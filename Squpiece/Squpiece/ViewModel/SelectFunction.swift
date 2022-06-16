//
//  SelectFunction.swift
//  Squpiece
//
//  Created by 황정현 on 2022/06/05.
//

import SpriteKit

func pieceRotation(node: [SKShapeNode]) {
    //let rotateAngle = CGFloat(360/pieceNum)
    let rotateAngle = CGFloat(Double(2) * CGFloat.pi / Double(numberOfPiece))
    var currentAngle: CGFloat = 0
    for i in 0..<numberOfPiece {
        node[i].isHidden = false
        //node[i].angle
        node[i].zRotation = currentAngle
        currentAngle += rotateAngle
    }
    for i in numberOfPiece..<node.count {
        node[i].isHidden = true
    }
}

func changeStageName(node: SKLabelNode, nameList: [String]) {
    let fadeOut = SKAction.fadeOut(withDuration: 0.1)
    let labelChange = SKAction.run {
        node.text = String(nameList[numberOfPiece-2])
    }
    let fadeIn = SKAction.fadeIn(withDuration: 0.1)
    let sequence = SKAction.sequence([fadeOut, labelChange, fadeIn])
    node.run(sequence)
}

func pastRecord(scoreNode: SKLabelNode, comboNode: SKLabelNode) {
    let highScoreValue = dataGet(key: highScoreNameList[numberOfPiece - 2])
    let maxComboValue = dataGet(key: maxComboNameList[numberOfPiece - 2])
    scoreNode.text = String(highScoreValue)
    comboNode.text = String(maxComboValue)
}

func changeStageSprite(index: Int, nodes: [SKSpriteNode]) {
    for i in 0..<nodes.count {
        if(i != index) {
            nodes[i].isHidden =  true
        } else {
            nodes[i].isHidden = false
        }
    }
}

