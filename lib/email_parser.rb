# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
  
  def initialize (email_addresses)
    @email_input = email_addresses
  end
  
  def parse
    email_ar = @email_input.split(" ")
    email_ar.map! do |email|
      if email[-1] == ","
        email.delete_suffix(",") 
      else
        email
      end
    end
    @parsed_emails = email_ar.uniq
    @parsed_emails
  end
  
end