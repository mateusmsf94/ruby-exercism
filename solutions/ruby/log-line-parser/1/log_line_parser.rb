class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    message = @line.split(":")
    message[1].strip
  end

  def log_level
    full_message = @line.split(":")
    full_message[0][1..-2].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
