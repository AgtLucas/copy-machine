# ReaderDecorator

=begin
The Forwardable module provides delegation of specified methods to a designated object, using the methods def_delegator and def_delegators.
http://ruby-doc.org/stdlib-1.9.3/libdoc/forwardable/rdoc/Forwardable.html
=end
require 'forwardable'

class ReaderDecorator
  extend Forwardable

  def_instance_delegators :@real_reader

  def initialize(real_reader)
    @real_reader = real_reader
  end
end