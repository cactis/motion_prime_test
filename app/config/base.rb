Prime::Config.configure do |config|
  config.colors do |colors|
    colors.strong = 0x1b75bc
    colors.base = 0xdddddd
    colors.dark = 0x333333
    colors.light = 0xbbbbbb

    colors.nav = 0xffffff
    colors.nav_bg = 0x000000
  end

  config.fonts do |fonts|
    fonts.light = "Ubuntu-Light"
    fonts.base = "Ubuntu"
  end

  config.api_client do |api|
    api.base = "http://example.com"
    api.client_id = ""
    api.client_secret = ""
  end
end
