# frozen_string_literal: true

require 'pathname'

def exists?(container)
  !(container.nil? || container.empty?)
end

module Gitlab
  module RequireRelativePatch
    def set_require_relative_path(base)
      @base = base
      class << self
        define_method(:require_relative) do |path|
          file_path = (Pathname.new(@base) / path).cleanpath
          require file_path.to_s
        end
      end
    end
  end

  module StringPatch
    refine String do
      def deindent
        gsub(/^#{scan(/^[ \t]+(?=\S)/).min}/, '')
      end
    end
  end
end
