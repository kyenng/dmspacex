// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable operator_usage_whitespace
extension Color {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
// swiftlint:enable operator_usage_whitespace

// swiftlint:disable identifier_name line_length type_body_length
struct ColorName {
  let rgbaValue: UInt32
  var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  static let black000 = ColorName(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#aed6fa"></span>
  /// Alpha: 100% <br/> (0xaed6faff)
  static let blue100 = ColorName(rgbaValue: 0xaed6faff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7fbdf7"></span>
  /// Alpha: 100% <br/> (0x7fbdf7ff)
  static let blue200 = ColorName(rgbaValue: 0x7fbdf7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#54a4f3"></span>
  /// Alpha: 100% <br/> (0x54a4f3ff)
  static let blue300 = ColorName(rgbaValue: 0x54a4f3ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#3692f2"></span>
  /// Alpha: 100% <br/> (0x3692f2ff)
  static let blue400 = ColorName(rgbaValue: 0x3692f2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ddeffc"></span>
  /// Alpha: 100% <br/> (0xddeffcff)
  static let blue50 = ColorName(rgbaValue: 0xddeffcff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1e80f0"></span>
  /// Alpha: 100% <br/> (0x1e80f0ff)
  static let blue500 = ColorName(rgbaValue: 0x1e80f0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1b71de"></span>
  /// Alpha: 100% <br/> (0x1b71deff)
  static let blue600 = ColorName(rgbaValue: 0x1b71deff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#175fc7"></span>
  /// Alpha: 100% <br/> (0x175fc7ff)
  static let blue700 = ColorName(rgbaValue: 0x175fc7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#134eb2"></span>
  /// Alpha: 100% <br/> (0x134eb2ff)
  static let blue800 = ColorName(rgbaValue: 0x134eb2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0d3290"></span>
  /// Alpha: 100% <br/> (0x0d3290ff)
  static let blue900 = ColorName(rgbaValue: 0x0d3290ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#709eff"></span>
  /// Alpha: 100% <br/> (0x709effff)
  static let blueA100 = ColorName(rgbaValue: 0x709effff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#3671ff"></span>
  /// Alpha: 100% <br/> (0x3671ffff)
  static let blueA200 = ColorName(rgbaValue: 0x3671ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#215eff"></span>
  /// Alpha: 100% <br/> (0x215effff)
  static let blueA400 = ColorName(rgbaValue: 0x215effff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1f45ff"></span>
  /// Alpha: 100% <br/> (0x1f45ffff)
  static let blueA700 = ColorName(rgbaValue: 0x1f45ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c4cfd4"></span>
  /// Alpha: 100% <br/> (0xc4cfd4ff)
  static let blueGrey100 = ColorName(rgbaValue: 0xc4cfd4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a1b0b8"></span>
  /// Alpha: 100% <br/> (0xa1b0b8ff)
  static let blueGrey200 = ColorName(rgbaValue: 0xa1b0b8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7e939e"></span>
  /// Alpha: 100% <br/> (0x7e939eff)
  static let blueGrey300 = ColorName(rgbaValue: 0x7e939eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#657d8a"></span>
  /// Alpha: 100% <br/> (0x657d8aff)
  static let blueGrey400 = ColorName(rgbaValue: 0x657d8aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e7ebed"></span>
  /// Alpha: 100% <br/> (0xe7ebedff)
  static let blueGrey50 = ColorName(rgbaValue: 0xe7ebedff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4e6a78"></span>
  /// Alpha: 100% <br/> (0x4e6a78ff)
  static let blueGrey500Primary = ColorName(rgbaValue: 0x4e6a78ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#435b67"></span>
  /// Alpha: 100% <br/> (0x435b67ff)
  static let blueGrey600 = ColorName(rgbaValue: 0x435b67ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#364851"></span>
  /// Alpha: 100% <br/> (0x364851ff)
  static let blueGrey700 = ColorName(rgbaValue: 0x364851ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#2a373e"></span>
  /// Alpha: 100% <br/> (0x2a373eff)
  static let blueGrey800 = ColorName(rgbaValue: 0x2a373eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1d262a"></span>
  /// Alpha: 100% <br/> (0x1d262aff)
  static let blueGrey900 = ColorName(rgbaValue: 0x1d262aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cdc1bc"></span>
  /// Alpha: 100% <br/> (0xcdc1bcff)
  static let brown100 = ColorName(rgbaValue: 0xcdc1bcff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ae9993"></span>
  /// Alpha: 100% <br/> (0xae9993ff)
  static let brown200 = ColorName(rgbaValue: 0xae9993ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8f756c"></span>
  /// Alpha: 100% <br/> (0x8f756cff)
  static let brown300 = ColorName(rgbaValue: 0x8f756cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7a5a50"></span>
  /// Alpha: 100% <br/> (0x7a5a50ff)
  static let brown400 = ColorName(rgbaValue: 0x7a5a50ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ebe6e4"></span>
  /// Alpha: 100% <br/> (0xebe6e4ff)
  static let brown50 = ColorName(rgbaValue: 0xebe6e4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#654338"></span>
  /// Alpha: 100% <br/> (0x654338ff)
  static let brown500Primary = ColorName(rgbaValue: 0x654338ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#593b32"></span>
  /// Alpha: 100% <br/> (0x593b32ff)
  static let brown600 = ColorName(rgbaValue: 0x593b32ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4a312a"></span>
  /// Alpha: 100% <br/> (0x4a312aff)
  static let brown700 = ColorName(rgbaValue: 0x4a312aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#3d2723"></span>
  /// Alpha: 100% <br/> (0x3d2723ff)
  static let brown800 = ColorName(rgbaValue: 0x3d2723ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#2f1d1a"></span>
  /// Alpha: 100% <br/> (0x2f1d1aff)
  static let brown900 = ColorName(rgbaValue: 0x2f1d1aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a5e7ef"></span>
  /// Alpha: 100% <br/> (0xa5e7efff)
  static let cyan100 = ColorName(rgbaValue: 0xa5e7efff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#70d7e5"></span>
  /// Alpha: 100% <br/> (0x70d7e5ff)
  static let cyan200 = ColorName(rgbaValue: 0x70d7e5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#42c7da"></span>
  /// Alpha: 100% <br/> (0x42c7daff)
  static let cyan300 = ColorName(rgbaValue: 0x42c7daff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#26bbd1"></span>
  /// Alpha: 100% <br/> (0x26bbd1ff)
  static let cyan400 = ColorName(rgbaValue: 0x26bbd1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d9f5f9"></span>
  /// Alpha: 100% <br/> (0xd9f5f9ff)
  static let cyan50 = ColorName(rgbaValue: 0xd9f5f9ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#16afca"></span>
  /// Alpha: 100% <br/> (0x16afcaff)
  static let cyan500Primary = ColorName(rgbaValue: 0x16afcaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#149db4"></span>
  /// Alpha: 100% <br/> (0x149db4ff)
  static let cyan600 = ColorName(rgbaValue: 0x149db4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#118696"></span>
  /// Alpha: 100% <br/> (0x118696ff)
  static let cyan700 = ColorName(rgbaValue: 0x118696ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0e717c"></span>
  /// Alpha: 100% <br/> (0x0e717cff)
  static let cyan800 = ColorName(rgbaValue: 0x0e717cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0a4e51"></span>
  /// Alpha: 100% <br/> (0x0a4e51ff)
  static let cyan900 = ColorName(rgbaValue: 0x0a4e51ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#76ffff"></span>
  /// Alpha: 100% <br/> (0x76ffffff)
  static let cyanA100 = ColorName(rgbaValue: 0x76ffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#27ffff"></span>
  /// Alpha: 100% <br/> (0x27ffffff)
  static let cyanA200 = ColorName(rgbaValue: 0x27ffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1ce0ff"></span>
  /// Alpha: 100% <br/> (0x1ce0ffff)
  static let cyanA400 = ColorName(rgbaValue: 0x1ce0ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#16aaca"></span>
  /// Alpha: 100% <br/> (0x16aacaff)
  static let cyanA700 = ColorName(rgbaValue: 0x16aacaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fec0ae"></span>
  /// Alpha: 100% <br/> (0xfec0aeff)
  static let deepOrange100 = ColorName(rgbaValue: 0xfec0aeff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fd997f"></span>
  /// Alpha: 100% <br/> (0xfd997fff)
  static let deepOrange200 = ColorName(rgbaValue: 0xfd997fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc7453"></span>
  /// Alpha: 100% <br/> (0xfc7453ff)
  static let deepOrange300 = ColorName(rgbaValue: 0xfc7453ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc5934"></span>
  /// Alpha: 100% <br/> (0xfc5934ff)
  static let deepOrange400 = ColorName(rgbaValue: 0xfc5934ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f9e3e1"></span>
  /// Alpha: 100% <br/> (0xf9e3e1ff)
  static let deepOrange50 = ColorName(rgbaValue: 0xf9e3e1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc3f1b"></span>
  /// Alpha: 100% <br/> (0xfc3f1bff)
  static let deepOrange500Primary = ColorName(rgbaValue: 0xfc3f1bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ee3918"></span>
  /// Alpha: 100% <br/> (0xee3918ff)
  static let deepOrange600 = ColorName(rgbaValue: 0xee3918ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dd3315"></span>
  /// Alpha: 100% <br/> (0xdd3315ff)
  static let deepOrange700 = ColorName(rgbaValue: 0xdd3315ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cc2e12"></span>
  /// Alpha: 100% <br/> (0xcc2e12ff)
  static let deepOrange800 = ColorName(rgbaValue: 0xcc2e12ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#af230d"></span>
  /// Alpha: 100% <br/> (0xaf230dff)
  static let deepOrange900 = ColorName(rgbaValue: 0xaf230dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fd8a6d"></span>
  /// Alpha: 100% <br/> (0xfd8a6dff)
  static let deepOrangeA100 = ColorName(rgbaValue: 0xfd8a6dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc5632"></span>
  /// Alpha: 100% <br/> (0xfc5632ff)
  static let deepOrangeA200 = ColorName(rgbaValue: 0xfc5632ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc2407"></span>
  /// Alpha: 100% <br/> (0xfc2407ff)
  static let deepOrangeA400 = ColorName(rgbaValue: 0xfc2407ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d21605"></span>
  /// Alpha: 100% <br/> (0xd21605ff)
  static let deepOrangeA700 = ColorName(rgbaValue: 0xd21605ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c6b5e3"></span>
  /// Alpha: 100% <br/> (0xc6b5e3ff)
  static let deepPurple100 = ColorName(rgbaValue: 0xc6b5e3ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a388d2"></span>
  /// Alpha: 100% <br/> (0xa388d2ff)
  static let deepPurple200 = ColorName(rgbaValue: 0xa388d2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#825cc2"></span>
  /// Alpha: 100% <br/> (0x825cc2ff)
  static let deepPurple300 = ColorName(rgbaValue: 0x825cc2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6a3eb5"></span>
  /// Alpha: 100% <br/> (0x6a3eb5ff)
  static let deepPurple400 = ColorName(rgbaValue: 0x6a3eb5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e8e0f4"></span>
  /// Alpha: 100% <br/> (0xe8e0f4ff)
  static let deepPurple50 = ColorName(rgbaValue: 0xe8e0f4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#5321a8"></span>
  /// Alpha: 100% <br/> (0x5321a8ff)
  static let deepPurple500Primary = ColorName(rgbaValue: 0x5321a8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4a1da1"></span>
  /// Alpha: 100% <br/> (0x4a1da1ff)
  static let deepPurple600 = ColorName(rgbaValue: 0x4a1da1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#3f1697"></span>
  /// Alpha: 100% <br/> (0x3f1697ff)
  static let deepPurple700 = ColorName(rgbaValue: 0x3f1697ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#34128e"></span>
  /// Alpha: 100% <br/> (0x34128eff)
  static let deepPurple800 = ColorName(rgbaValue: 0x34128eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#24047f"></span>
  /// Alpha: 100% <br/> (0x24047fff)
  static let deepPurple900 = ColorName(rgbaValue: 0x24047fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a26dff"></span>
  /// Alpha: 100% <br/> (0xa26dffff)
  static let deepPurpleA100 = ColorName(rgbaValue: 0xa26dffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#672bff"></span>
  /// Alpha: 100% <br/> (0x672bffff)
  static let deepPurpleA200 = ColorName(rgbaValue: 0x672bffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#5000ff"></span>
  /// Alpha: 100% <br/> (0x5000ffff)
  static let deepPurpleA400 = ColorName(rgbaValue: 0x5000ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4e00e4"></span>
  /// Alpha: 100% <br/> (0x4e00e4ff)
  static let deepPurpleA700 = ColorName(rgbaValue: 0x4e00e4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#bde2bd"></span>
  /// Alpha: 100% <br/> (0xbde2bdff)
  static let green100 = ColorName(rgbaValue: 0xbde2bdff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#96cf96"></span>
  /// Alpha: 100% <br/> (0x96cf96ff)
  static let green200 = ColorName(rgbaValue: 0x96cf96ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#70be71"></span>
  /// Alpha: 100% <br/> (0x70be71ff)
  static let green300 = ColorName(rgbaValue: 0x70be71ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#56b157"></span>
  /// Alpha: 100% <br/> (0x56b157ff)
  static let green400 = ColorName(rgbaValue: 0x56b157ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e3f3e4"></span>
  /// Alpha: 100% <br/> (0xe3f3e4ff)
  static let green50 = ColorName(rgbaValue: 0xe3f3e4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#40a33f"></span>
  /// Alpha: 100% <br/> (0x40a33fff)
  static let green500 = ColorName(rgbaValue: 0x40a33fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#379237"></span>
  /// Alpha: 100% <br/> (0x379237ff)
  static let green600 = ColorName(rgbaValue: 0x379237ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#2e7e2e"></span>
  /// Alpha: 100% <br/> (0x2e7e2eff)
  static let green700 = ColorName(rgbaValue: 0x2e7e2eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#266c26"></span>
  /// Alpha: 100% <br/> (0x266c26ff)
  static let green800 = ColorName(rgbaValue: 0x266c26ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#184e18"></span>
  /// Alpha: 100% <br/> (0x184e18ff)
  static let green900 = ColorName(rgbaValue: 0x184e18ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#adf7be"></span>
  /// Alpha: 100% <br/> (0xadf7beff)
  static let greenA100 = ColorName(rgbaValue: 0xadf7beff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#5cf19e"></span>
  /// Alpha: 100% <br/> (0x5cf19eff)
  static let greenA200 = ColorName(rgbaValue: 0x5cf19eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1ee663"></span>
  /// Alpha: 100% <br/> (0x1ee663ff)
  static let greenA400 = ColorName(rgbaValue: 0x1ee663ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#19c142"></span>
  /// Alpha: 100% <br/> (0x19c142ff)
  static let greenA700 = ColorName(rgbaValue: 0x19c142ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f2f2f2"></span>
  /// Alpha: 100% <br/> (0xf2f2f2ff)
  static let grey100 = ColorName(rgbaValue: 0xf2f2f2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#eaeaea"></span>
  /// Alpha: 100% <br/> (0xeaeaeaff)
  static let grey200 = ColorName(rgbaValue: 0xeaeaeaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d9d9d9"></span>
  /// Alpha: 100% <br/> (0xd9d9d9ff)
  static let grey300 = ColorName(rgbaValue: 0xd9d9d9ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#afafaf"></span>
  /// Alpha: 100% <br/> (0xafafafff)
  static let grey400 = ColorName(rgbaValue: 0xafafafff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f9f9f9"></span>
  /// Alpha: 100% <br/> (0xf9f9f9ff)
  static let grey50 = ColorName(rgbaValue: 0xf9f9f9ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8c8c8c"></span>
  /// Alpha: 100% <br/> (0x8c8c8cff)
  static let grey500Primary = ColorName(rgbaValue: 0x8c8c8cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#626262"></span>
  /// Alpha: 100% <br/> (0x626262ff)
  static let grey600 = ColorName(rgbaValue: 0x626262ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4e4e4e"></span>
  /// Alpha: 100% <br/> (0x4e4e4eff)
  static let grey700 = ColorName(rgbaValue: 0x4e4e4eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#333333"></span>
  /// Alpha: 100% <br/> (0x333333ff)
  static let grey800 = ColorName(rgbaValue: 0x333333ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#191919"></span>
  /// Alpha: 100% <br/> (0x191919ff)
  static let grey900 = ColorName(rgbaValue: 0x191919ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b9bde3"></span>
  /// Alpha: 100% <br/> (0xb9bde3ff)
  static let indigo100 = ColorName(rgbaValue: 0xb9bde3ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8e95d1"></span>
  /// Alpha: 100% <br/> (0x8e95d1ff)
  static let indigo200 = ColorName(rgbaValue: 0x8e95d1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6670bf"></span>
  /// Alpha: 100% <br/> (0x6670bfff)
  static let indigo300 = ColorName(rgbaValue: 0x6670bfff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4a54b2"></span>
  /// Alpha: 100% <br/> (0x4a54b2ff)
  static let indigo400 = ColorName(rgbaValue: 0x4a54b2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e2e4f4"></span>
  /// Alpha: 100% <br/> (0xe2e4f4ff)
  static let indigo50 = ColorName(rgbaValue: 0xe2e4f4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#303aa6"></span>
  /// Alpha: 100% <br/> (0x303aa6ff)
  static let indigo500Primary = ColorName(rgbaValue: 0x303aa6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#2b339b"></span>
  /// Alpha: 100% <br/> (0x2b339bff)
  static let indigo600 = ColorName(rgbaValue: 0x2b339bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#242b8d"></span>
  /// Alpha: 100% <br/> (0x242b8dff)
  static let indigo700 = ColorName(rgbaValue: 0x242b8dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1e2280"></span>
  /// Alpha: 100% <br/> (0x1e2280ff)
  static let indigo800 = ColorName(rgbaValue: 0x1e2280ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#14146b"></span>
  /// Alpha: 100% <br/> (0x14146bff)
  static let indigo900 = ColorName(rgbaValue: 0x14146bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7988ff"></span>
  /// Alpha: 100% <br/> (0x7988ffff)
  static let indigoA100 = ColorName(rgbaValue: 0x7988ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4151fd"></span>
  /// Alpha: 100% <br/> (0x4151fdff)
  static let indigoA200 = ColorName(rgbaValue: 0x4151fdff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#2e3cfd"></span>
  /// Alpha: 100% <br/> (0x2e3cfdff)
  static let indigoA400 = ColorName(rgbaValue: 0x2e3cfdff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#242ffd"></span>
  /// Alpha: 100% <br/> (0x242ffdff)
  static let indigoA700 = ColorName(rgbaValue: 0x242ffdff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a5dffb"></span>
  /// Alpha: 100% <br/> (0xa5dffbff)
  static let lightBlue100 = ColorName(rgbaValue: 0xa5dffbff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#71caf8"></span>
  /// Alpha: 100% <br/> (0x71caf8ff)
  static let lightBlue200 = ColorName(rgbaValue: 0x71caf8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#43b5f5"></span>
  /// Alpha: 100% <br/> (0x43b5f5ff)
  static let lightBlue300 = ColorName(rgbaValue: 0x43b5f5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#26a6f3"></span>
  /// Alpha: 100% <br/> (0x26a6f3ff)
  static let lightBlue400 = ColorName(rgbaValue: 0x26a6f3ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#daf3fe"></span>
  /// Alpha: 100% <br/> (0xdaf3feff)
  static let lightBlue50 = ColorName(rgbaValue: 0xdaf3feff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1397f1"></span>
  /// Alpha: 100% <br/> (0x1397f1ff)
  static let lightBlue500Primary = ColorName(rgbaValue: 0x1397f1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1287de"></span>
  /// Alpha: 100% <br/> (0x1287deff)
  static let lightBlue600 = ColorName(rgbaValue: 0x1287deff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0f73c6"></span>
  /// Alpha: 100% <br/> (0x0f73c6ff)
  static let lightBlue700 = ColorName(rgbaValue: 0x0f73c6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0d61af"></span>
  /// Alpha: 100% <br/> (0x0d61afff)
  static let lightBlue800 = ColorName(rgbaValue: 0x0d61afff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#084389"></span>
  /// Alpha: 100% <br/> (0x084389ff)
  static let lightBlue900 = ColorName(rgbaValue: 0x084389ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#70cfff"></span>
  /// Alpha: 100% <br/> (0x70cfffff)
  static let lightBlueA100 = ColorName(rgbaValue: 0x70cfffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#37b6ff"></span>
  /// Alpha: 100% <br/> (0x37b6ffff)
  static let lightBlueA200 = ColorName(rgbaValue: 0x37b6ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#139eff"></span>
  /// Alpha: 100% <br/> (0x139effff)
  static let lightBlueA400 = ColorName(rgbaValue: 0x139effff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0f7be4"></span>
  /// Alpha: 100% <br/> (0x0f7be4ff)
  static let lightBlueA700 = ColorName(rgbaValue: 0x0f7be4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d4eabc"></span>
  /// Alpha: 100% <br/> (0xd4eabcff)
  static let lightGreen100 = ColorName(rgbaValue: 0xd4eabcff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#badc94"></span>
  /// Alpha: 100% <br/> (0xbadc94ff)
  static let lightGreen200 = ColorName(rgbaValue: 0xbadc94ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a0cf6e"></span>
  /// Alpha: 100% <br/> (0xa0cf6eff)
  static let lightGreen300 = ColorName(rgbaValue: 0xa0cf6eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8cc453"></span>
  /// Alpha: 100% <br/> (0x8cc453ff)
  static let lightGreen400 = ColorName(rgbaValue: 0x8cc453ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#eef7e4"></span>
  /// Alpha: 100% <br/> (0xeef7e4ff)
  static let lightGreen50 = ColorName(rgbaValue: 0xeef7e4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7aba3a"></span>
  /// Alpha: 100% <br/> (0x7aba3aff)
  static let lightGreen500Primary = ColorName(rgbaValue: 0x7aba3aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6ba833"></span>
  /// Alpha: 100% <br/> (0x6ba833ff)
  static let lightGreen600 = ColorName(rgbaValue: 0x6ba833ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#57912b"></span>
  /// Alpha: 100% <br/> (0x57912bff)
  static let lightGreen700 = ColorName(rgbaValue: 0x57912bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#457b24"></span>
  /// Alpha: 100% <br/> (0x457b24ff)
  static let lightGreen800 = ColorName(rgbaValue: 0x457b24ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#285817"></span>
  /// Alpha: 100% <br/> (0x285817ff)
  static let lightGreen900 = ColorName(rgbaValue: 0x285817ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c3ff7e"></span>
  /// Alpha: 100% <br/> (0xc3ff7eff)
  static let lightGreenA100 = ColorName(rgbaValue: 0xc3ff7eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a6ff48"></span>
  /// Alpha: 100% <br/> (0xa6ff48ff)
  static let lightGreenA200 = ColorName(rgbaValue: 0xa6ff48ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#69ff0a"></span>
  /// Alpha: 100% <br/> (0x69ff0aff)
  static let lightGreenA400 = ColorName(rgbaValue: 0x69ff0aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#57db14"></span>
  /// Alpha: 100% <br/> (0x57db14ff)
  static let lightGreenA700 = ColorName(rgbaValue: 0x57db14ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fff9b8"></span>
  /// Alpha: 100% <br/> (0xfff9b8ff)
  static let lightYellow100 = ColorName(rgbaValue: 0xfff9b8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fff58c"></span>
  /// Alpha: 100% <br/> (0xfff58cff)
  static let lightYellow200 = ColorName(rgbaValue: 0xfff58cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fff163"></span>
  /// Alpha: 100% <br/> (0xfff163ff)
  static let lightYellow300 = ColorName(rgbaValue: 0xfff163ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffed47"></span>
  /// Alpha: 100% <br/> (0xffed47ff)
  static let lightYellow400 = ColorName(rgbaValue: 0xffed47ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fffde1"></span>
  /// Alpha: 100% <br/> (0xfffde1ff)
  static let lightYellow50 = ColorName(rgbaValue: 0xfffde1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffea2e"></span>
  /// Alpha: 100% <br/> (0xffea2eff)
  static let lightYellow500Primary = ColorName(rgbaValue: 0xffea2eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fcd22a"></span>
  /// Alpha: 100% <br/> (0xfcd22aff)
  static let lightYellow600 = ColorName(rgbaValue: 0xfcd22aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f9b423"></span>
  /// Alpha: 100% <br/> (0xf9b423ff)
  static let lightYellow700 = ColorName(rgbaValue: 0xf9b423ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f6981e"></span>
  /// Alpha: 100% <br/> (0xf6981eff)
  static let lightYellow800 = ColorName(rgbaValue: 0xf6981eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f06a14"></span>
  /// Alpha: 100% <br/> (0xf06a14ff)
  static let lightYellow900 = ColorName(rgbaValue: 0xf06a14ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffff7b"></span>
  /// Alpha: 100% <br/> (0xffff7bff)
  static let lightYellowA100 = ColorName(rgbaValue: 0xffff7bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffff0b"></span>
  /// Alpha: 100% <br/> (0xffff0bff)
  static let lightYellowA200 = ColorName(rgbaValue: 0xffff0bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffe90a"></span>
  /// Alpha: 100% <br/> (0xffe90aff)
  static let lightYellowA400 = ColorName(rgbaValue: 0xffe90aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fecf0a"></span>
  /// Alpha: 100% <br/> (0xfecf0aff)
  static let lightYellowA700 = ColorName(rgbaValue: 0xfecf0aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ecf3b6"></span>
  /// Alpha: 100% <br/> (0xecf3b6ff)
  static let lime100 = ColorName(rgbaValue: 0xecf3b6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e0ed8b"></span>
  /// Alpha: 100% <br/> (0xe0ed8bff)
  static let lime200 = ColorName(rgbaValue: 0xe0ed8bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d4e562"></span>
  /// Alpha: 100% <br/> (0xd4e562ff)
  static let lime300 = ColorName(rgbaValue: 0xd4e562ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cbde46"></span>
  /// Alpha: 100% <br/> (0xcbde46ff)
  static let lime400 = ColorName(rgbaValue: 0xcbde46ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f8fbe1"></span>
  /// Alpha: 100% <br/> (0xf8fbe1ff)
  static let lime50 = ColorName(rgbaValue: 0xf8fbe1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c3d82c"></span>
  /// Alpha: 100% <br/> (0xc3d82cff)
  static let lime500Primary = ColorName(rgbaValue: 0xc3d82cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b3c227"></span>
  /// Alpha: 100% <br/> (0xb3c227ff)
  static let lime600 = ColorName(rgbaValue: 0xb3c227ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a0a821"></span>
  /// Alpha: 100% <br/> (0xa0a821ff)
  static let lime700 = ColorName(rgbaValue: 0xa0a821ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8d8e1c"></span>
  /// Alpha: 100% <br/> (0x8d8e1cff)
  static let lime800 = ColorName(rgbaValue: 0x8d8e1cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6f6513"></span>
  /// Alpha: 100% <br/> (0x6f6513ff)
  static let lime900 = ColorName(rgbaValue: 0x6f6513ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f2ff6e"></span>
  /// Alpha: 100% <br/> (0xf2ff6eff)
  static let limeA100 = ColorName(rgbaValue: 0xf2ff6eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ebff33"></span>
  /// Alpha: 100% <br/> (0xebff33ff)
  static let limeA200 = ColorName(rgbaValue: 0xebff33ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#bcff09"></span>
  /// Alpha: 100% <br/> (0xbcff09ff)
  static let limeA400 = ColorName(rgbaValue: 0xbcff09ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a1ea08"></span>
  /// Alpha: 100% <br/> (0xa1ea08ff)
  static let limeA700 = ColorName(rgbaValue: 0xa1ea08ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fed9a3"></span>
  /// Alpha: 100% <br/> (0xfed9a3ff)
  static let orange100 = ColorName(rgbaValue: 0xfed9a3ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fec26d"></span>
  /// Alpha: 100% <br/> (0xfec26dff)
  static let orange200 = ColorName(rgbaValue: 0xfec26dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fda93d"></span>
  /// Alpha: 100% <br/> (0xfda93dff)
  static let orange300 = ColorName(rgbaValue: 0xfda93dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fd961e"></span>
  /// Alpha: 100% <br/> (0xfd961eff)
  static let orange400 = ColorName(rgbaValue: 0xfd961eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fff0d9"></span>
  /// Alpha: 100% <br/> (0xfff0d9ff)
  static let orange50 = ColorName(rgbaValue: 0xfff0d9ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fd8508"></span>
  /// Alpha: 100% <br/> (0xfd8508ff)
  static let orange500Primary = ColorName(rgbaValue: 0xfd8508ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f77808"></span>
  /// Alpha: 100% <br/> (0xf77808ff)
  static let orange600 = ColorName(rgbaValue: 0xf77808ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f06708"></span>
  /// Alpha: 100% <br/> (0xf06708ff)
  static let orange700 = ColorName(rgbaValue: 0xf06708ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e85607"></span>
  /// Alpha: 100% <br/> (0xe85607ff)
  static let orange800 = ColorName(rgbaValue: 0xe85607ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dd3b06"></span>
  /// Alpha: 100% <br/> (0xdd3b06ff)
  static let orange900 = ColorName(rgbaValue: 0xdd3b06ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fec86d"></span>
  /// Alpha: 100% <br/> (0xfec86dff)
  static let orangeA100 = ColorName(rgbaValue: 0xfec86dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fd9b32"></span>
  /// Alpha: 100% <br/> (0xfd9b32ff)
  static let orangeA200 = ColorName(rgbaValue: 0xfd9b32ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fd7d08"></span>
  /// Alpha: 100% <br/> (0xfd7d08ff)
  static let orangeA400 = ColorName(rgbaValue: 0xfd7d08ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc5608"></span>
  /// Alpha: 100% <br/> (0xfc5608ff)
  static let orangeA700 = ColorName(rgbaValue: 0xfc5608ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f5aac5"></span>
  /// Alpha: 100% <br/> (0xf5aac5ff)
  static let pink100 = ColorName(rgbaValue: 0xf5aac5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ef78a2"></span>
  /// Alpha: 100% <br/> (0xef78a2ff)
  static let pink200 = ColorName(rgbaValue: 0xef78a2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e94880"></span>
  /// Alpha: 100% <br/> (0xe94880ff)
  static let pink300 = ColorName(rgbaValue: 0xe94880ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e42567"></span>
  /// Alpha: 100% <br/> (0xe42567ff)
  static let pink400 = ColorName(rgbaValue: 0xe42567ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fadce7"></span>
  /// Alpha: 100% <br/> (0xfadce7ff)
  static let pink50 = ColorName(rgbaValue: 0xfadce7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e00051"></span>
  /// Alpha: 100% <br/> (0xe00051ff)
  static let pink500Primary = ColorName(rgbaValue: 0xe00051ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cc004e"></span>
  /// Alpha: 100% <br/> (0xcc004eff)
  static let pink600 = ColorName(rgbaValue: 0xcc004eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b20049"></span>
  /// Alpha: 100% <br/> (0xb20049ff)
  static let pink700 = ColorName(rgbaValue: 0xb20049ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#9b0045"></span>
  /// Alpha: 100% <br/> (0x9b0045ff)
  static let pink800 = ColorName(rgbaValue: 0x9b0045ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#73003e"></span>
  /// Alpha: 100% <br/> (0x73003eff)
  static let pink900 = ColorName(rgbaValue: 0x73003eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc669b"></span>
  /// Alpha: 100% <br/> (0xfc669bff)
  static let pinkA100 = ColorName(rgbaValue: 0xfc669bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc226e"></span>
  /// Alpha: 100% <br/> (0xfc226eff)
  static let pinkA200 = ColorName(rgbaValue: 0xfc226eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ef0046"></span>
  /// Alpha: 100% <br/> (0xef0046ff)
  static let pinkA400 = ColorName(rgbaValue: 0xef0046ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b6004f"></span>
  /// Alpha: 100% <br/> (0xb6004fff)
  static let pinkA700 = ColorName(rgbaValue: 0xb6004fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d9aee1"></span>
  /// Alpha: 100% <br/> (0xd9aee1ff)
  static let purple100 = ColorName(rgbaValue: 0xd9aee1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c17ccf"></span>
  /// Alpha: 100% <br/> (0xc17ccfff)
  static let purple200 = ColorName(rgbaValue: 0xc17ccfff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#aa4dbc"></span>
  /// Alpha: 100% <br/> (0xaa4dbcff)
  static let purple300 = ColorName(rgbaValue: 0xaa4dbcff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#992bae"></span>
  /// Alpha: 100% <br/> (0x992baeff)
  static let purple400 = ColorName(rgbaValue: 0x992baeff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#efdef2"></span>
  /// Alpha: 100% <br/> (0xefdef2ff)
  static let purple50 = ColorName(rgbaValue: 0xefdef2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8800a0"></span>
  /// Alpha: 100% <br/> (0x8800a0ff)
  static let purple500Primary = ColorName(rgbaValue: 0x8800a0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7a009a"></span>
  /// Alpha: 100% <br/> (0x7a009aff)
  static let purple600 = ColorName(rgbaValue: 0x7a009aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#660091"></span>
  /// Alpha: 100% <br/> (0x660091ff)
  static let purple700 = ColorName(rgbaValue: 0x660091ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#560088"></span>
  /// Alpha: 100% <br/> (0x560088ff)
  static let purple800 = ColorName(rgbaValue: 0x560088ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#390079"></span>
  /// Alpha: 100% <br/> (0x390079ff)
  static let purple900 = ColorName(rgbaValue: 0x390079ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e262fb"></span>
  /// Alpha: 100% <br/> (0xe262fbff)
  static let purpleA100 = ColorName(rgbaValue: 0xe262fbff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d50ffa"></span>
  /// Alpha: 100% <br/> (0xd50ffaff)
  static let purpleA200 = ColorName(rgbaValue: 0xd50ffaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c800f7"></span>
  /// Alpha: 100% <br/> (0xc800f7ff)
  static let purpleA400 = ColorName(rgbaValue: 0xc800f7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#9700ff"></span>
  /// Alpha: 100% <br/> (0x9700ffff)
  static let purpleA700 = ColorName(rgbaValue: 0x9700ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fec0c8"></span>
  /// Alpha: 100% <br/> (0xfec0c8ff)
  static let red100 = ColorName(rgbaValue: 0xfec0c8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e98688"></span>
  /// Alpha: 100% <br/> (0xe98688ff)
  static let red200 = ColorName(rgbaValue: 0xe98688ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dc5c60"></span>
  /// Alpha: 100% <br/> (0xdc5c60ff)
  static let red300 = ColorName(rgbaValue: 0xdc5c60ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e83b3f"></span>
  /// Alpha: 100% <br/> (0xe83b3fff)
  static let red400 = ColorName(rgbaValue: 0xe83b3fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fee5ea"></span>
  /// Alpha: 100% <br/> (0xfee5eaff)
  static let red50 = ColorName(rgbaValue: 0xfee5eaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ee2b2a"></span>
  /// Alpha: 100% <br/> (0xee2b2aff)
  static let red500Primary = ColorName(rgbaValue: 0xee2b2aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dc2229"></span>
  /// Alpha: 100% <br/> (0xdc2229ff)
  static let red600 = ColorName(rgbaValue: 0xdc2229ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c61a24"></span>
  /// Alpha: 100% <br/> (0xc61a24ff)
  static let red700 = ColorName(rgbaValue: 0xc61a24ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b7141f"></span>
  /// Alpha: 100% <br/> (0xb7141fff)
  static let red800 = ColorName(rgbaValue: 0xb7141fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a60916"></span>
  /// Alpha: 100% <br/> (0xa60916ff)
  static let red900 = ColorName(rgbaValue: 0xa60916ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc746d"></span>
  /// Alpha: 100% <br/> (0xfc746dff)
  static let redA100 = ColorName(rgbaValue: 0xfc746dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fc3841"></span>
  /// Alpha: 100% <br/> (0xfc3841ff)
  static let redA200 = ColorName(rgbaValue: 0xfc3841ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fb0035"></span>
  /// Alpha: 100% <br/> (0xfb0035ff)
  static let redA400 = ColorName(rgbaValue: 0xfb0035ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c80005"></span>
  /// Alpha: 100% <br/> (0xc80005ff)
  static let redA700 = ColorName(rgbaValue: 0xc80005ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a4d8d2"></span>
  /// Alpha: 100% <br/> (0xa4d8d2ff)
  static let teal100 = ColorName(rgbaValue: 0xa4d8d2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6fc1b7"></span>
  /// Alpha: 100% <br/> (0x6fc1b7ff)
  static let teal200 = ColorName(rgbaValue: 0x6fc1b7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#41a99c"></span>
  /// Alpha: 100% <br/> (0x41a99cff)
  static let teal300 = ColorName(rgbaValue: 0x41a99cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#239788"></span>
  /// Alpha: 100% <br/> (0x239788ff)
  static let teal400 = ColorName(rgbaValue: 0x239788ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d9efed"></span>
  /// Alpha: 100% <br/> (0xd9efedff)
  static let teal50 = ColorName(rgbaValue: 0xd9efedff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#118675"></span>
  /// Alpha: 100% <br/> (0x118675ff)
  static let teal500Primary = ColorName(rgbaValue: 0x118675ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0f7868"></span>
  /// Alpha: 100% <br/> (0x0f7868ff)
  static let teal600 = ColorName(rgbaValue: 0x0f7868ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0d6758"></span>
  /// Alpha: 100% <br/> (0x0d6758ff)
  static let teal700 = ColorName(rgbaValue: 0x0d6758ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0b574a"></span>
  /// Alpha: 100% <br/> (0x0b574aff)
  static let teal800 = ColorName(rgbaValue: 0x0b574aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#083d31"></span>
  /// Alpha: 100% <br/> (0x083d31ff)
  static let teal900 = ColorName(rgbaValue: 0x083d31ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#9affe6"></span>
  /// Alpha: 100% <br/> (0x9affe6ff)
  static let tealA100 = ColorName(rgbaValue: 0x9affe6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#59ffd1"></span>
  /// Alpha: 100% <br/> (0x59ffd1ff)
  static let tealA200 = ColorName(rgbaValue: 0x59ffd1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#26e8a7"></span>
  /// Alpha: 100% <br/> (0x26e8a7ff)
  static let tealA400 = ColorName(rgbaValue: 0x26e8a7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#17b494"></span>
  /// Alpha: 100% <br/> (0x17b494ff)
  static let tealA700 = ColorName(rgbaValue: 0x17b494ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fcedac"></span>
  /// Alpha: 100% <br/> (0xfcedacff)
  static let yellow100 = ColorName(rgbaValue: 0xfcedacff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fbe27b"></span>
  /// Alpha: 100% <br/> (0xfbe27bff)
  static let yellow200 = ColorName(rgbaValue: 0xfbe27bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f8d84e"></span>
  /// Alpha: 100% <br/> (0xf8d84eff)
  static let yellow300 = ColorName(rgbaValue: 0xf8d84eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f8ce31"></span>
  /// Alpha: 100% <br/> (0xf8ce31ff)
  static let yellow400 = ColorName(rgbaValue: 0xf8ce31ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fef7db"></span>
  /// Alpha: 100% <br/> (0xfef7dbff)
  static let yellow50 = ColorName(rgbaValue: 0xfef7dbff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f6c519"></span>
  /// Alpha: 100% <br/> (0xf6c519ff)
  static let yellow500 = ColorName(rgbaValue: 0xf6c519ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f2b216"></span>
  /// Alpha: 100% <br/> (0xf2b216ff)
  static let yellow600 = ColorName(rgbaValue: 0xf2b216ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f19814"></span>
  /// Alpha: 100% <br/> (0xf19814ff)
  static let yellow700 = ColorName(rgbaValue: 0xf19814ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ed8011"></span>
  /// Alpha: 100% <br/> (0xed8011ff)
  static let yellow800 = ColorName(rgbaValue: 0xed8011ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e7590d"></span>
  /// Alpha: 100% <br/> (0xe7590dff)
  static let yellow900 = ColorName(rgbaValue: 0xe7590dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fed86d"></span>
  /// Alpha: 100% <br/> (0xfed86dff)
  static let yellowA100 = ColorName(rgbaValue: 0xfed86dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fec432"></span>
  /// Alpha: 100% <br/> (0xfec432ff)
  static let yellowA200 = ColorName(rgbaValue: 0xfec432ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fdaf09"></span>
  /// Alpha: 100% <br/> (0xfdaf09ff)
  static let yellowA400 = ColorName(rgbaValue: 0xfdaf09ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fd8c09"></span>
  /// Alpha: 100% <br/> (0xfd8c09ff)
  static let yellowA700 = ColorName(rgbaValue: 0xfd8c09ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  static let ffffff = ColorName(rgbaValue: 0xffffffff)
}
// swiftlint:enable identifier_name line_length type_body_length

extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
