Dir[File.join(File.dirname(__FILE__), "~/../desafio-qa-ruby/features/pages*.page.rb")].each { |file| require file }

module Page

    def home
        @home ||= HomePage.new
    end

end
