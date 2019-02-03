//
//  UIImageEx.swift
//  Framer
//
//  Created by Dide van Berkel on 03/02/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    func image(withRotation radians: CGFloat) -> UIImage {
        let cgImage = self.cgImage!
        let LARGEST_SIZE = CGFloat(max(self.size.width, self.size.height))
        let context = CGContext.init(data: nil, width:Int(LARGEST_SIZE), height:Int(LARGEST_SIZE), bitsPerComponent: cgImage.bitsPerComponent, bytesPerRow: 0, space: cgImage.colorSpace!, bitmapInfo: cgImage.bitmapInfo.rawValue)!
        
        var drawRect = CGRect.zero
        drawRect.size = self.size
        let drawOrigin = CGPoint(x: (LARGEST_SIZE - self.size.width) * 0.5,y: (LARGEST_SIZE - self.size.height) * 0.5)
        drawRect.origin = drawOrigin
        var tf = CGAffineTransform.identity
        tf = tf.translatedBy(x: LARGEST_SIZE * 0.5, y: LARGEST_SIZE * 0.5)
        tf = tf.rotated(by: CGFloat(radians))
        tf = tf.translatedBy(x: LARGEST_SIZE * -0.5, y: LARGEST_SIZE * -0.5)
        context.concatenate(tf)
        context.draw(cgImage, in: drawRect)
        var rotatedImage = context.makeImage()!
        
        drawRect = drawRect.applying(tf)
        
        rotatedImage = rotatedImage.cropping(to: drawRect)!
        let resultImage = UIImage(cgImage: rotatedImage)
        return resultImage
    }
    
//    func imageRotatedByDegrees(degrees: CGFloat, flip: Bool) -> UIImage {
//        let radiansToDegrees: (CGFloat) -> CGFloat = {
//            return $0 * (180.0 / CGFloat(Double.pi))
//        }
//        let degreesToRadians: (CGFloat) -> CGFloat = {
//            return $0 / 180.0 * CGFloat(Double.pi)
//        }
//        
//        // calculate the size of the rotated view's containing box for our drawing space
//        let rotatedViewBox = UIView(frame: CGRect(origin: CGPoint.zero, size: size))
//        let t = CGAffineTransform(rotationAngle: degreesToRadians(degrees));
//        rotatedViewBox.transform = t
//        let rotatedSize = rotatedViewBox.frame.size
//        
//        // Create the bitmap context
//        UIGraphicsBeginImageContext(rotatedSize)
//        if let bitmap = UIGraphicsGetCurrentContext() {
//            // Move the origin to the middle of the image so we will rotate and scale around the center.
//            CGContextTranslateCTM(bitmap, rotatedSize.width / 2.0, rotatedSize.height / 2.0);
//            
//            //   // Rotate the image context
//            CGContextRotateCTM(bitmap, degreesToRadians(degrees));
//            
//            // Now, draw the rotated/scaled image into the context
//            var yFlip: CGFloat
//            
//            if(flip){
//                yFlip = CGFloat(-1.0)
//            } else {
//                yFlip = CGFloat(1.0)
//            }
//            
//            CGContextScaleCTM(bitmap, yFlip, -1.0)
//            CGContextDrawImage(bitmap, CGRectMake(-size.width / 2, -size.height / 2, size.width, size.height), CGImage)
//            
//            let newImage = UIGraphicsGetImageFromCurrentImageContext()
//            UIGraphicsEndImageContext()
//        }
//        
//        return newImage
//    }
}
