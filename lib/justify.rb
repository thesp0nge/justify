require "justify/version"

class String
  def justify(len = 80, indent_len = 0)
    unless self.length < len
      words = self.scan(/\S+/)
      actual_len = indent_len
      output = " " * indent_len
      words.each do |w|
        if (actual_len > indent_len)
          if (actual_len + w.length>len)
            output += "\n" + " " * indent_len
            actual_len = indent_len
          else
            output += " "
          end
        end
        output += w
        actual_len += w.length + 1
      end
      return output
    else
      " " * indent_len << self
    end
  end
end
