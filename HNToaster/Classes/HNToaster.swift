import Foundation

public class Toaster {
    public static func toast(onView superView: UIView, message: String, frame: CGRect? = nil, font: UIFont? = nil) {
        let toastLabel = UILabel()
        if let toastFrame = frame {
            toastLabel.frame = toastFrame
        } else {
            toastLabel.frame = CGRect(x: 0, y: 0, width: 280, height: 90)
            toastLabel.center = superView.center
        }
        if let toastFont = font {
            toastLabel.font = toastFont
        } else {
            toastLabel.font = UIFont.systemFont(ofSize: 20)//UIFont(name: "Montserrat-Light", size: 16.0)
        }
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.numberOfLines = message.numberOfLines
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        superView.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}

private extension String {
    var numberOfLines: Int {
        get {
            return 1 + self.numberOfOccurrences(of: "\n")
        }
    }
    
    func numberOfOccurrences(of word: String) -> Int {
        var count = 0
        var nextRange = self.startIndex..<self.endIndex
        while let range = self.range(of: word, options: .caseInsensitive, range: nextRange) {
            count += 1
            nextRange = range.upperBound..<self.endIndex
        }
        return count
    }
}
