# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails                
    end
    
   def parse
        @emails = @emails.gsub(/,/ ," ").split
		# sentence.gsub(/a/, "") #returns "This is smple sentence."
        # The .gsub method is finding all of the a’s in the string and removing them. From https://medium.com/@angelospmusic/basic-regular-expressions-in-ruby-with-gsub-e6c67e501c88
		@emails.uniq
	end


end
