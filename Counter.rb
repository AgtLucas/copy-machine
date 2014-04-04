# Counter

class Counter < WriterDecorator

  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def counter
    @counter += 1
  end

end