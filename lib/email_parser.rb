# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(email_string)
        @email_addresses = email_string 
    end 

    attr_accessor :email_addresses

    def parse

        @parsed_email_array = []

        @email_array = @email_addresses.split(" ") 
        
        @email_array.each do |email|
            if email[-1] == "," 
                chopped_email = email.chop 
                 
                @parsed_email_array << chopped_email 
            else 
                @parsed_email_array << email 
            end
        end  
    
        @final_email_array = @parsed_email_array.uniq 

        return @final_email_array  
    end

end 

