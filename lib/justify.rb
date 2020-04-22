require "justify/version"

class String
  def justify(len = 80, indent_len = 0)
    unless self.length < len

      words = self.gsub("\n", " ").scan(/[\w.-]+/)
      actual_len = 0
      output = " " * indent_len
      words.each do |w|
        output += w
        actual_len += w.length
        if actual_len >= len
          output += "\n"
          output += " " * indent_len
          actual_len = 0
        else
          output += " "
        end
      end
      return output
    else
      " " * indent_len << self
    end

  end
end
