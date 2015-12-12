require 'rubygems'
require 'appium_lib'

caps = { caps: { platformName: 'Android', appActivity: 'com.woi.liputan6.android.ui.user_guide.activities.WelcomeActivity', appPackage: 'com.woi.liputan6.android', deviceName: '01b15d0795d50b10' } }
driver = Appium::Driver.new(caps)
Appium.promote_appium_methods self.class
driver.start_driver.manage.timeouts.implicit_wait = 20 # seconds

def topnav
  find_element name: 'Navigate up'
end

topnav.click

items = find_elements :id, 'com.woi.liputan6.android:id/menu_item_name'

# Klik Login
items[0].click
back

topnav.click

# Klik Top Stories
items[2].click
topnav.click

# Klik Latest News
items[3].click
topnav.click

# Klik Popular
items[4].click
topnav.click

# Klik TV Streaming
items[5].click
2.times do
  back
end

topnav.click

# Klik News
items[7].click
topnav.click

# Klik Pilkada
items[8].click
topnav.click

# Klik Bisnis
items[9].click
topnav.click

# Klik ShowBiz
items[10].click
topnav.click

# Klik Bola
items[11].click
topnav.click

# Klik Tekno
items[12].click
topnav.click

# Klik Lifestyle
items[13].click
topnav.click

# Klik Global
items[14].click
topnav.click

# Klik Otomotif
items[15].click
topnav.click

# Klik Health
items[16].click
topnav.click

# Klik Citizen6
items[17].click
topnav.click

# Klik Regional
items[18].click
topnav.click

# Klik Photo
items[19].click
topnav.click

# Klik Video
items[20].click
topnav.click

driver.driver_quit
