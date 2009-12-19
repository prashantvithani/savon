class ResponseFixture

  def self.authentication(value = nil)
    case value
      when :to_hash
        { :success => true,
          :authentication_value => {
            :token => "a68d1d6379b62ff339a0e0c69ed4d9cf",
            :token_hash => "AAAJxA;cIedoT;mY10ExZwG6JuKgp2OYKxow==",
            :client => "radclient"
          }
        }
      #when :token      then "a68d1d6379b62ff339a0e0c69ed4d9cf"
      #when :token_hash then "AAAJxA;cIedoT;mY10ExZwG6JuKgp2OYKxow=="
      #when :client     then "radclient"
      else                  @@authentication ||= load_fixture :authentication
    end
  end

  def self.soap_fault
    @@soap_fault ||= load_fixture :soap_fault
  end

  def self.soap_fault12
    @@soap_fault12 ||= load_fixture :soap_fault12
  end

private

  def self.load_fixture(fixture)
    File.read File.join(File.dirname(__FILE__), "xml", "#{fixture}.xml")
  end

end
