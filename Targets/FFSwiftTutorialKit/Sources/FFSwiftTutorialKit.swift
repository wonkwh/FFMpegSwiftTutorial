
import FFmpegKit
import Foundation
import Libavcodec
import Libavformat
import Libavutil

public final class FFSwiftTutorialKit {
  public static func hello() {
    print("Hello, from your Kit framework")
  }
}

public final class FFVersionHelper {
  public static var avUtilVersion: String {
    return "util version: \(String(describing: Libavutil.avutil_version()))"
  }

  public static var avCodecVersion: String {
    return "util version: \(String(describing: Libavcodec.avcodec_version() ))"
  }

  public static var codecConfiguration: String {
    guard let config = Libavcodec.avcodec_configuration() else {
      return "empty"
    }

    let info = String(cString: config)
    return "codec info: \(String(describing: info))"
  }

  public static var formatConfiguration: String {
    guard let config = Libavformat.avformat_configuration() else {
      return "empty"
    }

    let info = String(cString: config)
    return "format info: \(String(describing: info))"
  }
}
