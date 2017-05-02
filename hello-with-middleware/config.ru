require 'rack'
require_relative './hello'
require_relative './randomize'

use Randomize
run Hello.new