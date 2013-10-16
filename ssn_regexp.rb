def has_ssn?(string)
  string =~ /\d{3}.\d{2}.\d{4}/
end

def grab_ssn(string)
  string.scan(/\d{3}.\d{2}.\d{4}/)[0]
end

def grab_all_ssns(string)
  string.scan(/\d{3}.\d{2}.\d{4}/)      
end

def hide_all_ssns(string)
  string.gsub(/\d{3}.\d{2}/, "XXX-XX")    
end

def format_ssns(string)
  string.gsub(/(\d{3}).?(\d{2}).?(\d{4})/, '\1-\2-\3')    
end

grab_ssn "please don't share this: 234-60-1422" # => "234-60-1422"
grab_all_ssns "234-60-1422, 350-80-0744, 013-60-8762" # => ["234-60-1422", "350-80-0744", "013-60-8762"]
hide_all_ssns "234-60-1422, 350-80-0744, 013-60-8762" # => "XXX-XX-1422, XXX-XX-0744, XXX-XX-8762"
format_ssns "234601422, 350.80.0744, 013-60-8762" # => "234-60-1422, 350-80-0744, 013-60-8762"