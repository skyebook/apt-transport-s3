name             'apt-transport-s3'
maintainer       'Skye Book'
maintainer_email 'skye@skyebook.net'
license          'Apache 2.0'
description      'Installs/Configures apt-transport-s3'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'apt', '1.10.0'

%w{ ubuntu }.each do |os|
  supports os
end

recipe           "apt-transport-s3", "Installs the apt-transport-s3 package."
