maintainer       "Wes Morgan"
maintainer_email "cap10morgan@gmail.com"
license          "Apache 2.0"
description      "Collection of useful recipes for setting up Linodes"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.1.0"

recipe           "default", "Sets up static networking & DNS"
recipe           "apt_get_upgrade", "Upgrades packages on first boot"
recipe           "api_gem", "Installs the Linode API client for the other recipes to work"
recipe           "static_net", "Sets up static networking"
recipe           "dns", "Creates Linode DNS entries for the node"

depends "apt"

%w{ubuntu debian}.each do |os|
  supports os
end
