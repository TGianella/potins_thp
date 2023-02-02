require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/router'
require 'app/controller'
require 'app/gossip'
require 'app/view'

Router.new.perform
