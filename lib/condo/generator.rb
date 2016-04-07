require 'condo/version'
require 'fileutils'
require 'thor'
require 'pathname'

module Condo
  class Generator < Thor
    map ["-v", "--version"] => :version

    desc "install", "Install Condo into your project"
    method_options :path => :string, :force => :boolean
    def install
      if condo_files_already_exist? && !options[:force]
        puts "Condo files already installed, doing nothing."
      else
        install_files
        puts "Condo files installed to #{install_path}/"
      end
    end

    desc "update", "Update Condo"
    method_options :path => :string
    def update
      if condo_files_already_exist?
        remove_condo_directory
        install_files
        puts "Condo files updated."
      else
        puts "No existing condo installation. Doing nothing."
      end
    end

    desc "version", "Show Condo version"
    def version
      say "Condo #{Condo::VERSION}"
    end

    private

    def condo_files_already_exist?
      install_path.exist?
    end

    def install_path
      @install_path ||= if options[:path]
          Pathname.new(File.join(options[:path], "condo"))
        else
          Pathname.new("condo")
        end
    end

    def install_files
      make_install_directory
      copy_in_scss_files
    end

    def remove_condo_directory
      FileUtils.rm_rf("condo")
    end

    def make_install_directory
      FileUtils.mkdir_p(install_path)
    end

    def copy_in_scss_files
      FileUtils.cp_r(all_stylesheets, install_path)
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def stylesheets_directory
      File.join(top_level_directory, "core")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
