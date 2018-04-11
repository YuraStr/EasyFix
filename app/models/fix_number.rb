require 'singleton'

class FixNumber < ApplicationRecord
  include Singleton

  def self.instance
    FixNumber.first
  end
end
