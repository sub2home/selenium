require './base'

class Basic < Base

    def test_sauce
        @driver.navigate.to 'http://sub2home.com'
        assert @driver.title.include? 'sub2home - Deine Onlinetheke für SUBWAY®-Lieferservices'

        @driver.find_element(:id, 'locationSelectionInput').send_keys '87700'
        assert @driver.find_element(:css, '#deliveryAreaSelection span:first-child').text.include? 'Innenstadt'

        @driver.find_element(:css, '#deliveryAreaSelection span:first-child').click

        assert @driver.title.include? 'SUBWAY® Memmingen Lieferservice - sub2home'
    end

end