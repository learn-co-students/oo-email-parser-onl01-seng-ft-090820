# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_address
  
  CSV = []
  
  def initialize(email_addresses)
    @email_address = email_addresses
  end
  
  def parse
    email_address_array = @email_address.split(/[, ]/).uniq
    email_address_array.reject! {|x| x.empty?}
    email_address_array
  end

end
    