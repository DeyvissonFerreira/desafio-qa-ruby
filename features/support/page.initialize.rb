Dir[File.join(File.dirname(__FILE__), "~/../ruby_automation/features/pages*.page.rb")].each { |file| require file }

module Page

    def home
        @home ||= HomePage.new
    end

end