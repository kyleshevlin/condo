require "condo/generator"

condo_path = File.expand_path('../../core', __FILE__)

ENV["SASS_PATH"] = [
  ENV["SASS_PATH"],
  condo_path
].compact.join(File::PATH_SEPARATOR)
