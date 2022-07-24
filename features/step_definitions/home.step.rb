Dado('que o usuario queira validar os dados de contato do Fale conosco') do
    home.load
  end
  
  Quando('acessar o site da gwcloud e acessar o Jamcracker') do
    home.acessarJamcracker
  end
  
  Entao('deve validar os dados de contato do Fale conosco') do
    home.validaFaleConosco
  end