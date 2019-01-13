require "net/http"
require "uri"

uri = URI.parse("http://www.casadocodigo.com.br")
Net::HTTP.get_print(uri)