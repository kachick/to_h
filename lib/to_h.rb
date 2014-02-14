# to_h - Add SomePairs#to_h for compatbility with Ruby 2.0~
# Copyright (c) 2012 Kenichi Kamiya

# @see http://d.hatena.ne.jp/nagachika/20120416/ruby_trunk_changes_35337_35352

if RUBY_VERSION < '2.0'

  class Hash

    # @return [Hash]
    def to_h
      instance_of?(Hash) ? self : Hash[self]
    end

  end

  class Struct

    # @return [Hash]
    def to_h
      Hash[each_pair.to_a]
    end

  end

  class << ENV

    # @return [Hash]
    alias_method :to_h, :to_hash

  end

  class NilClass

    # @return [Hash]
    def to_h
      {}
    end

  end

  module Enumerable

    # @return [Hash]
    def to_h
		  hsh = {}
		  none = class.new.new
		  each do |k,v=none,*x|
        raise ArgumentError, "element has wrong array length (expected 2, was 1)" if v == none
        raise ArgumentError, "element has wrong array length (expected 2, was #{x.length+2})" if x.any?
        hsh[k] = v
      end
      hsh
	  end

  end

end
