require 'singleton'

class FixNumber < ApplicationRecord

  @@instance = FixNumber.first

  def self.new
    update_number
    code
  end

  def self.update_number
    @@code = @@instance.number
    @@instance.number += 1
    @@instance.save
  end

  def self.code
    @@code
  end
end
