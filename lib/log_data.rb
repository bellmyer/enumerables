class LogData
  include Enumerable
  
  attr_reader :file
  
  def initialize file
    @file = file
    @fh = File.open(file)
  end
  
  def each
    @fh.each do |line| 
      yield parse(line) if line =~ /heroku\[router\]/
    end
    
    @fh.seek(0)
  end
  
  private
  
  def parse line
    parts = line.split(/\s+/)
    elements = {}
    
    elements[:timestamp] = parts.shift
    
    parts.grep(/=/).each do |part|
      key, value = part.split(/=/)
      key = key.to_sym
      value = value.gsub(/^"/, '').gsub(/"$/, '')
      
      elements[key] = value
    end
    
    elements
  end
end