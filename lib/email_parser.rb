class EmailAddressParser

attr_accessor :name, :csv_email_addresses 

def initialize(csv_email_addresses)
  @csv_email_addresses = csv_email_addresses
end 


def parse 
  csv_email_addresses.split.collect do |address|
    address.split(",")
  end
 .flatten.uniq
end 

end 






# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
