# WriterDecorator

=begin
The Forwardable module provides delegation of specified methods to a designated object, using the methods def_delegator and def_delegators.
http://ruby-doc.org/stdlib-1.9.3/libdoc/forwardable/rdoc/Forwardable.html
=end
require 'forwardable'

class WriterDecorator
  extend Forwardable

  def_instance_delegators :@real_writer, :write_line, :pos, :rewind, :close, :counter

  def initialize(real_writer)
    @real_writer = real_writer
  end

end