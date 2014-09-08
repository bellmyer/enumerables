require_relative './log_record'

class LogData
  include Enumerable
  
  attr_reader :file
  
  def initialize file
    @file = file
    @fh = File.open(file)
  end
  
  def each format = :full
    current_id = 0
    
    @fh.each do |line| 
      next unless line =~ /heroku\[router\]/
      
      current_id += 1
      record = LogRecord.new(current_id, line)
      
      case format
      when :full
        yield record
      when :simple
        yield record.to_s
      end
    end
    
    reset
  end
  
  # reset the filehandle before each enumerable method call
  Enumerable.instance_methods.each do |method_name|
    define_method method_name, ->(*args, &block) {reset; super(*args, &block)}
  end
  
  private
  
  def reset
    @fh.seek(0)
  end
end