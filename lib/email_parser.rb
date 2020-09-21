class EmailAddressParser
attr_accessor :parse

def initialize(parse)
  @parse = parse
end

def parse
  @parse.split(/,?\s/).uniq
end

end 


