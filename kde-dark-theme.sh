#kvantummanager --set Fluent-roundDark
# change color scheme to breezedark and breeze widget style.
#plasma-theme --colors ~/.local/share/color-schemes/FluentDarkHigoru.colors --widgetStyle Colloid-dark
plasma-apply-colorscheme FluentLight
# You can also pass the --colors and --widgetStyle options twice to cycle between them.
# If the first value is the current one then it applies the second value
# otherwise it applies the first one.

# toggle between light/dark mode
# if the [--colors, -c] or [--widgetStyle, -w] arguments are passed twice
# the app will cycle through them
#$ plasma-theme \
#    -c /usr/share/color-schemes/BreezeDark.colors \
#    -c /usr/share/color-schemes/BreezeLight.colors \
#    -w Breeze

# for kvantum users, kvantum provides "kvantum" and "kvantum-dark" if the theme supports it.
# current example using theme KvArc.
# In this case make sure that initially you use KvArc with kvantum, or KvArcDark with kvantum-dark
# otherwise you will get the opposite cominations from what you'd expect as this utility
# will only cycle through the values of each option independently of what the other option is set to
#$ plasma-theme \
#    -w kvantum -w kvantum-dark \
#    -c ~/.local/share/color-schemes/KvArc.colors \
#    -c ~/.local/share/color-schemes/KvArcDark.colors

# on some themes the toolbar is always dark, so there might be no need to change color scheme.
# In this case cycling through the two widget styles will suffice
#plasma-theme -w kvantum -w kvantum-dark
