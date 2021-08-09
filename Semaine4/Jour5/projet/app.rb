require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)



Router.new.perform