require "capncook/version"

module Capncook
  def self.build(klass)
    klass_name = klass.to_s.capitalize
    user = Object.const_get(klass_name).new
    user.first_name = "Walter"

    return user
  rescue NameError => error
    raise Exception.new("'#{klass.to_s.capitalize}' is an unknown class.")
  end
end
