# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module Zeitwerk
end

class Zeitwerk::Error < ::StandardError
end

module Zeitwerk::ExplicitNamespace
  def self.cpaths; end
  def self.disable_tracer_if_unneeded; end
  def self.mutex; end
  def self.register(cpath, loader); end
  def self.tracer; end
  def self.unregister(loader); end
end

class Zeitwerk::GemInflector < ::Zeitwerk::Inflector
  def initialize(root_file); end

  def camelize(basename, abspath); end
end

class Zeitwerk::Inflector
  def camelize(basename, _abspath); end
end

class Zeitwerk::Loader
  include(::Zeitwerk::Loader::Callbacks)

  def initialize; end

  def autoloaded_dirs; end
  def autoloads; end
  def dirs; end
  def do_not_eager_load(*paths); end
  def eager_load; end
  def eager_load_exclusions; end
  def enable_reloading; end
  def expand_ignored_glob_patterns; end
  def ignore(*paths); end
  def ignored; end
  def ignored_paths; end
  def inflector; end
  def inflector=(_); end
  def lazy_subdirs; end
  def log!; end
  def logger; end
  def logger=(_); end
  def mutex; end
  def mutex2; end
  def preload(*paths); end
  def preloads; end
  def push_dir(path); end
  def reload; end
  def reloading_enabled?; end
  def root_dirs; end
  def setup; end
  def tag; end
  def tag=(tag); end
  def to_unload; end
  def unload; end
  def unloadable_cpath?(cpath); end
  def unloadable_cpaths; end

  private

  def actual_root_dirs; end
  def autoload_file(parent, cname, file); end
  def autoload_for?(parent, cname); end
  def autoload_subdir(parent, cname, subdir); end
  def cdef?(parent, cname); end
  def cpath(parent, cname); end
  def dir?(path); end
  def do_preload; end
  def do_preload_abspath(abspath); end
  def do_preload_dir(dir); end
  def do_preload_file(file); end
  def expand_paths(paths); end
  def log(message); end
  def ls(dir); end
  def promote_namespace_from_implicit_to_explicit(dir:, file:, parent:, cname:); end
  def raise_if_conflicting_directory(dir); end
  def register_explicit_namespace(cpath); end
  def ruby?(path); end
  def set_autoload(parent, cname, abspath); end
  def set_autoloads_in_dir(dir, parent); end
  def strict_autoload_path(parent, cname); end
  def unload_autoload(parent, cname); end
  def unload_cref(parent, cname); end

  def self.all_dirs; end
  def self.default_logger; end
  def self.default_logger=(_); end
  def self.eager_load_all; end
  def self.for_gem; end
  def self.mutex; end
  def self.mutex=(_); end
end

module Zeitwerk::Loader::Callbacks
  def on_dir_autoloaded(dir); end
  def on_file_autoloaded(file); end
  def on_namespace_loaded(namespace); end
end

module Zeitwerk::Registry
  def self.autoloads; end
  def self.inception?(cpath); end
  def self.inceptions; end
  def self.loader_for(path); end
  def self.loader_for_gem(root_file); end
  def self.loaders; end
  def self.loaders_managing_gems; end
  def self.on_unload(loader); end
  def self.register_autoload(loader, realpath); end
  def self.register_inception(cpath, realpath, loader); end
  def self.register_loader(loader); end
  def self.unregister_autoload(realpath); end
end

class Zeitwerk::ReloadingDisabledError < ::Zeitwerk::Error
end
