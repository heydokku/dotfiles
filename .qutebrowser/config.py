import dracula.draw

config.set("colors.webpage.darkmode.enabled", True)

# Load existing settings made via :set

config.load_autoconfig()

#dracula

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

#Block the Spyware Javascript

config.set("content.javascript.enabled", False, "*://*.google.com/")
config.set("content.javascript.enabled", False, "*://*.youtube.com/")
config.set("content.javascript.enabled", False, "*://*.gstatic.com/")
config.set("content.javascript.enabled", False, "*://instagram.com/")
config.set("content.javascript.enabled", False, "*://*.instagram.com/")
config.set("content.javascript.enabled", False, "*://tiktok.com/")
config.set("content.javascript.enabled", False, "*://*.tiktok.com/")
config.set("content.javascript.enabled", False, "*://youtube.com/")
config.set("content.javascript.enabled", False, "*://twitter.com/")
config.set("content.javascript.enabled", False, "*://*.discordapp.com/")
config.set("content.javascript.enabled", False, "*://discord.com/")
config.set("content.javascript.enabled", False, "*://discordapp.com/")
config.set("content.javascript.enabled", False, "*://*.tenor.com/")
config.set("content.javascript.enabled", False, "*://tenor.com/")
config.set("content.javascript.enabled", False, "*://*.giphy.com/")
config.set("content.javascript.enabled", False, "*://giphy.com/")
config.set("content.javascript.enabled", False, "*://*.reddit.com/")
config.set("content.javascript.enabled", False, "*://reddit.com/")

#Switch between CSS Stylesheets
#Apprentice
config.bind(',ap', 'config-cycle content.user_stylesheets ~/solarized-everything-css/css/apprentice/apprentice-all-sites.css ""')
#Dracula
config.bind(',dr', 'config-cycle content.user_stylesheets ~/solarized-everything-css/css/darculized/darculized-all-sites.css ""')
#Solarized Dark
config.bind(',sd', 'config-cycle content.user_stylesheets ~/solarized-everything-css/css/solarized-dark/solarized-dark-all-sites.css ""')

#Other Settings
#Disable cookies
config.set('content.cookies.accept', 'all')
#Load images
config.set('content.images', True)
#Notification Settings
config.set('content.notifications.enabled', True)
c.downloads.location.directory = '~/Downloads/'
#if set to multiple, only show tab bar if there are more than 2 tabs open
c.tabs.show = 'multiple'
#Homepage
#c.url.default_page = 'file:///home/maxi/.surf/html/homepage.html'
c.url.default_page = 'https://search.ggc-project.de/'
#Search Engine
c.url.searchengines = {'DEFAULT': 'https://search.ggc-project.de/search?q={}'}
#Fonts
c.fonts.default_family = '"Fira Code"'
c.fonts.default_size = '11pt'
c.fonts.completion.entry = '11pt "Fira Code"'
c.fonts.debug_console = '11pt "Fira Code"'
c.fonts.statusbar = '11pt "Fira Code"'
