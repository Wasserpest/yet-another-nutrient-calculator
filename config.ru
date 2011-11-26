$:.unshift "#{File.dirname(__FILE__)}"

require 'rubygems'
require 'yaml'
require 'haml'
require 'rdiscount'
require 'thin'
require 'sinatra'
require 'sinatra/r18n'

require 'nutes'

# supported compounds
COMPOUNDS = YAML.load_file 'constants/compounds.yml'
COMMERCIAL = YAML.load_file 'constants/commercial_products.yml'

YANC.run! :environment => :production, :bind => '5050', :logging => 'true', :port => 5050
