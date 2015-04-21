require 'cucumber'

class Cucumber::MultilineArgument::DataTable

  def symbolic_hashes
    @header_conversion_proc = lambda {|h| symbolize_key(h)}
    @symbolic_hashes ||= build_hashes
  end

  private

  def symbolize_key(key)
    key.downcase.tr(' ','_').to_sym
  end

end