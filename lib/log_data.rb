require_relative './log_record'

class LogData
  include Enumerable
  
  attr_reader :file
  
  def initialize file
    @file = file
    @fh = File.open(file)
  end
  
  def each
    current_id = 0
    
    @fh.each do |line| 
      next unless line =~ /heroku\[router\]/
      
      current_id += 1
      yield LogRecord.new(current_id, line)
    end
    
    @fh.seek(0)
  end
end