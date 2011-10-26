require 'irb/completion'
require 'irb/ext/save-history'
require 'rubygems'
%x{gem install 'wirble' --no-ri --no-rdoc} if Gem::Specification.find_by_name('wirble').nil?
Gem.refresh
require 'wirble'

Wirble.init
Wirble.colorize

colors = Wirble::Colorize.colors.merge({
  :object_class => :purple,
  :symbol => :purple,
  :symbol_prefix => :purple
})
Wirble::Colorize.colors = colors
