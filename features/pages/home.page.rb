class HomePage < SitePrism::Page

    set_url ''
    element :menuCloudSolutions, :id, "w-dropdown-toggle-1"
    element :subMenuJamcracker, :css, "#w-dropdown-list-1 [href='/jamcracker']"
    element :botaoContato, :css, "[role='navigation'] + [href='/contato']"
    element :faleConoscoTitle, :css, ".c01 .c09_h3"
    element :numeroTelefone, :css, ".c01_block .c09_feature_column_85 p"

    def acessarJamcracker
        menuCloudSolutions.hover
        subMenuJamcracker.click
        botaoContato.click
    end

    def validaFaleConosco
        expect(faleConoscoTitle.text).to eql "Fale com nosso time de consultores."
        expect(numeroTelefone.text).to eql "Tel.: +55 11 3304-3200"
    end

end