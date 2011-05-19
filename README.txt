Mongomatic::Plugins::Accessors

  matic_accessor is a plugin for Mongomatic so you can use dot-notation to access the documents
  attributes

Usage

  require 'matic_accessor'

  class Monkey < Mongomatic::Base
    include Mongomatic::Plugins::Accessors
    matic_accessor :name, :nickname
    matic_reader   :age
    matic_writer   :weight
  end

  m = Monkey.new
  m.name      = 'funny'
  m.nickname  = 'bob'
  m[:age]     = 13
  m.weight    = 100
  m.insert

  m = Monkey.find_one
  m.name      # funny
  m.nickname  # bob
  m.age       # 13
  m[:weight]  # 100
