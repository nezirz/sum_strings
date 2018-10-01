require 'active_support'
require 'active_support/core_ext'
require "sum_strings/version"
require 'logger'


class Array
  
  def sum_strings(split_char)

      return nil if split_char.nil? 
      return nil if self.empty? 

      begin   
          result = self.sum do |s|
          h, m = s.split(split_char).map(&:to_i)
          60*h + m
          end.divmod(60).join(split_char)

      rescue Exception => ex
          logger = Logger.new(STDOUT)
          logger.error(ex.message)
      end
      result 
  end

end