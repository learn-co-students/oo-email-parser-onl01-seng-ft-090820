# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails
  attr_reader :email_csv

  def initialize(email_csv)
    @email_csv = email_csv
  end

  def parse
    emails = @email_csv.split(/,?\s/)
    emails.uniq
  end

end
