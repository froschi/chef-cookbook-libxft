include_recipe "libxrender"
include_recipe "libfontconfig"
include_recipe "libfreetype"

packages = %w/
  libxft2
/

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
