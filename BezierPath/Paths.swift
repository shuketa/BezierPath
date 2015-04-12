
import UIKit

struct Paths {
    
    static var upperCurve: CGPath {
        var path1Path = UIBezierPath()
        path1Path.moveToPoint(CGPointMake(45.19, 377.06))
        path1Path.addCurveToPoint(CGPointMake(11, 199.29), controlPoint1: CGPointMake(-1.49, 341.74), controlPoint2: CGPointMake(-6.44, 266.91))
        path1Path.addCurveToPoint(CGPointMake(63.59, 100.01), controlPoint1: CGPointMake(24.43, 141.08), controlPoint2: CGPointMake(63.59, 100.01))
        path1Path.addCurveToPoint(CGPointMake(307.74, 1.01), controlPoint1: CGPointMake(120.01, 34), controlPoint2: CGPointMake(215.75, 1.17))
        path1Path.addCurveToPoint(CGPointMake(526.27, 76.46), controlPoint1: CGPointMake(399.74, 0.85), controlPoint2: CGPointMake(489.35, 43.42))
        path1Path.addCurveToPoint(CGPointMake(601.69, 199.29), controlPoint1: CGPointMake(548.79, 96.61), controlPoint2: CGPointMake(589.7, 146.36))
        path1Path.addCurveToPoint(CGPointMake(565, 379.71), controlPoint1: CGPointMake(623.78, 296.74), controlPoint2: CGPointMake(607.7, 344.6))
        path1Path.addCurveToPoint(CGPointMake(425, 379.71), controlPoint1: CGPointMake(541.28, 399.22), controlPoint2: CGPointMake(469.86, 427.57))
        path1Path.addCurveToPoint(CGPointMake(307.74, 281.05), controlPoint1: CGPointMake(400.68, 353.78), controlPoint2: CGPointMake(376.37, 281.05))
        path1Path.addCurveToPoint(CGPointMake(187.1, 379.71), controlPoint1: CGPointMake(239.12, 281.05), controlPoint2: CGPointMake(213.86, 352.86))
        path1Path.addCurveToPoint(CGPointMake(45.19, 377.06), controlPoint1: CGPointMake(140.07, 426.89), controlPoint2: CGPointMake(72.91, 398.03))
        return path1Path.CGPath
    }
    
    static var downCurve: CGPath {
        var path1CopyPath = UIBezierPath()
        path1CopyPath.moveToPoint(CGPointMake(644.8, 253.3))
        path1CopyPath.addCurveToPoint(CGPointMake(671.59, 377.96), controlPoint1: CGPointMake(681.37, 278.07), controlPoint2: CGPointMake(685.25, 330.54))
        path1CopyPath.addCurveToPoint(CGPointMake(630.38, 447.58), controlPoint1: CGPointMake(661.06, 418.78), controlPoint2: CGPointMake(630.38, 447.58))
        path1CopyPath.addCurveToPoint(CGPointMake(439.07, 517), controlPoint1: CGPointMake(586.17, 493.86), controlPoint2: CGPointMake(511.15, 516.89))
        path1CopyPath.addCurveToPoint(CGPointMake(267.85, 464.09), controlPoint1: CGPointMake(366.99, 517.11), controlPoint2: CGPointMake(296.78, 487.26))
        path1CopyPath.addCurveToPoint(CGPointMake(208.75, 377.96), controlPoint1: CGPointMake(250.2, 449.96), controlPoint2: CGPointMake(218.15, 415.07))
        path1CopyPath.addCurveToPoint(CGPointMake(237.5, 251.44), controlPoint1: CGPointMake(191.44, 309.62), controlPoint2: CGPointMake(204.04, 276.06))
        path1CopyPath.addCurveToPoint(CGPointMake(347.2, 251.44), controlPoint1: CGPointMake(256.09, 237.76), controlPoint2: CGPointMake(312.04, 217.88))
        path1CopyPath.addCurveToPoint(CGPointMake(439.07, 320.63), controlPoint1: CGPointMake(366.25, 269.62), controlPoint2: CGPointMake(385.3, 320.63))
        path1CopyPath.addCurveToPoint(CGPointMake(533.61, 251.44), controlPoint1: CGPointMake(492.84, 320.63), controlPoint2: CGPointMake(512.63, 270.27))
        path1CopyPath.addCurveToPoint(CGPointMake(644.8, 253.3), controlPoint1: CGPointMake(570.45, 218.35), controlPoint2: CGPointMake(623.08, 238.59))
        return path1CopyPath.CGPath
    }
    
    static var downCircle: CGPath {
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(139, 73, 190, 190))
        return ovalPath.CGPath
    
    }
    
    static var star: CGPath {
        var star = UIBezierPath()
        star.moveToPoint(CGPointMake(112.79, 119))
        star.addCurveToPoint(CGPointMake(107.75, 122.6), controlPoint1: CGPointMake(113.41, 122.8), controlPoint2: CGPointMake(111.14, 124.42))
        star.addLineToPoint(CGPointMake(96.53, 116.58))
        star.addCurveToPoint(CGPointMake(84.14, 116.47), controlPoint1: CGPointMake(93.14, 114.76), controlPoint2: CGPointMake(87.56, 114.71))
        star.addLineToPoint(CGPointMake(72.82, 122.3))
        star.addCurveToPoint(CGPointMake(67.84, 118.62), controlPoint1: CGPointMake(69.4, 124.06), controlPoint2: CGPointMake(67.15, 122.41))
        star.addLineToPoint(CGPointMake(70.1, 106.09))
        star.addCurveToPoint(CGPointMake(66.37, 94.27), controlPoint1: CGPointMake(70.78, 102.3), controlPoint2: CGPointMake(69.1, 96.98))
        star.addLineToPoint(CGPointMake(57.33, 85.31))
        star.addCurveToPoint(CGPointMake(59.29, 79.43), controlPoint1: CGPointMake(54.6, 82.6), controlPoint2: CGPointMake(55.48, 79.95))
        star.addLineToPoint(CGPointMake(71.91, 77.71))
        star.addCurveToPoint(CGPointMake(81.99, 70.51), controlPoint1: CGPointMake(75.72, 77.19), controlPoint2: CGPointMake(80.26, 73.95))
        star.addLineToPoint(CGPointMake(87.72, 59.14))
        star.addCurveToPoint(CGPointMake(93.92, 59.2), controlPoint1: CGPointMake(89.46, 55.71), controlPoint2: CGPointMake(92.25, 55.73))
        star.addLineToPoint(CGPointMake(99.46, 70.66))
        star.addCurveToPoint(CGPointMake(109.42, 78.03), controlPoint1: CGPointMake(101.13, 74.13), controlPoint2: CGPointMake(105.62, 77.44))
        star.addLineToPoint(CGPointMake(122, 79.96))
        star.addCurveToPoint(CGPointMake(123.87, 85.87), controlPoint1: CGPointMake(125.81, 80.55), controlPoint2: CGPointMake(126.64, 83.21))
        star.addLineToPoint(CGPointMake(114.67, 94.68))
        star.addCurveToPoint(CGPointMake(110.75, 106.43), controlPoint1: CGPointMake(111.89, 97.34), controlPoint2: CGPointMake(110.13, 102.63))
        star.addLineToPoint(CGPointMake(112.79, 119))
        return star.CGPath
    }
    
    static var swift: CGPath {
        var swiftPath = UIBezierPath()
        swiftPath.moveToPoint(CGPointMake(376.2, 283.2))
        swiftPath.addCurveToPoint(CGPointMake(349.8, 238.4), controlPoint1: CGPointMake(367.4, 258.4), controlPoint2: CGPointMake(349.8, 238.4))
        swiftPath.addCurveToPoint(CGPointMake(236.5, 0), controlPoint1: CGPointMake(349.8, 238.4), controlPoint2: CGPointMake(399.7, 105.6))
        swiftPath.addCurveToPoint(CGPointMake(269, 180.8), controlPoint1: CGPointMake(303.7, 101.6), controlPoint2: CGPointMake(269, 180.8))
        swiftPath.addCurveToPoint(CGPointMake(181.29, 117.07), controlPoint1: CGPointMake(269, 180.8), controlPoint2: CGPointMake(211.4, 140.8))
        swiftPath.addCurveToPoint(CGPointMake(85, 33.6), controlPoint1: CGPointMake(151.18, 93.35), controlPoint2: CGPointMake(85, 33.6))
        swiftPath.addCurveToPoint(CGPointMake(145, 117.07), controlPoint1: CGPointMake(85, 33.6), controlPoint2: CGPointMake(128.15, 96.31))
        swiftPath.addCurveToPoint(CGPointMake(185.78, 163.66), controlPoint1: CGPointMake(161.85, 137.84), controlPoint2: CGPointMake(185.78, 163.66))
        swiftPath.addCurveToPoint(CGPointMake(136.36, 129.42), controlPoint1: CGPointMake(185.78, 163.66), controlPoint2: CGPointMake(161.07, 147.39))
        swiftPath.addCurveToPoint(CGPointMake(34.6, 50.4), controlPoint1: CGPointMake(111.65, 111.46), controlPoint2: CGPointMake(34.6, 50.4))
        swiftPath.addCurveToPoint(CGPointMake(133.8, 169.2), controlPoint1: CGPointMake(34.6, 50.4), controlPoint2: CGPointMake(82.69, 119.24))
        swiftPath.addCurveToPoint(CGPointMake(214.6, 244), controlPoint1: CGPointMake(184.91, 219.16), controlPoint2: CGPointMake(214.6, 244))
        swiftPath.addCurveToPoint(CGPointMake(129.8, 264.8), controlPoint1: CGPointMake(214.6, 244), controlPoint2: CGPointMake(196.2, 263.2))
        swiftPath.addCurveToPoint(CGPointMake(0, 221), controlPoint1: CGPointMake(63.4, 266.4), controlPoint2: CGPointMake(0, 221))
        swiftPath.addCurveToPoint(CGPointMake(206.6, 339.2), controlPoint1: CGPointMake(0, 221), controlPoint2: CGPointMake(62.5, 339.2))
        swiftPath.addCurveToPoint(CGPointMake(325, 304.8), controlPoint1: CGPointMake(270.6, 339.2), controlPoint2: CGPointMake(288.93, 304.8))
        swiftPath.addCurveToPoint(CGPointMake(383.3, 339.2), controlPoint1: CGPointMake(361.07, 304.8), controlPoint2: CGPointMake(381.7, 340))
        swiftPath.addCurveToPoint(CGPointMake(376.2, 283.2), controlPoint1: CGPointMake(384.9, 338.4), controlPoint2: CGPointMake(385, 308))
        return swiftPath.CGPath
    }
    
    static func circle(inFrame: CGRect) -> CGPath {
        let circle = UIBezierPath(ovalInRect: inFrame)
        return circle.CGPath
    }
    
}
