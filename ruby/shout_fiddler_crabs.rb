#1. Declare your module. The syntax for declaring a module is pretty simple:
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
end
#2. In your terminal, run IRB from the directory that contains shout.rb. We can
#use require_relative to load our new module:

