class LogRecord
  attr_reader :elements, :id, :timestamp, :message_type, :method, :path, :host, :request_id, :fwd, :dyno, :connect, :service, :status, :bytes, :error_code

  def initialize id, line
    @elements = parse(line)

    @id = id
    @timestamp = @elements[:timestamp]
    @message_type = @elements[:at]
    @method = @elements[:method]
    @path = @elements[:path]
    @host = @elements[:host]
    @request_id = @elements[:request_id]
    @fwd = @elements[:fwd]
    @dyno = @elements[:dyno]
    @connect = @elements[:connect]
    @service = @elements[:service]
    @status = @elements[:status]
    @bytes = @elements[:bytes]
    @error_code = @elements[:code]
  end
  
  def get?
    method == 'GET'
  end
  
  def post?
    method == 'POST'
  end
  
  def error?
    message_type == 'error'
  end
  
  def ok?
    [200, 302].include?(status)
  end
  
  def response_time
    connect + service
  end
  
  def <=> other_record
    response_time
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
      
      value = value.to_i if value =~ /^[0-9]+(ms)?$/
      
      elements[key] = value
    end
    
    elements
  end
end