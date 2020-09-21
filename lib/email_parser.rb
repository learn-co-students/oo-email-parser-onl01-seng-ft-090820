# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    unique_addresses = [ ] 
    emails.split.collect do |address|
      unique_addresses << address.split(',')
    end
    unique_addresses.flatten.uniq
  end
  
  
  
end