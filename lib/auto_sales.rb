require_relative "auto_sales/version"
require_relative "auto_sales/cli"
require_relative "auto_sales/autosales"
require_relative "auto_sales/car"

require 'nokogiri'
require 'open-uri'

module AutoSales
  class Error < StandardError; end
  # Your code goes here...
end

