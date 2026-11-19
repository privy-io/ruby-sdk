# frozen_string_literal: true

require "etc"
require "pathname"
require "securerandom"
require "shellwords"
require "tempfile"

require "minitest/test_task"
require "rake/clean"
require "rbs"
require "rubocop/rake_task"

tapioca = "sorbet/tapioca"
examples = "examples"
ignore_file = ".ignore"

FILES_ENV = "FORMAT_FILE"

CLEAN.push(*%w[.idea/ .ruby-lsp/ .yardoc/ doc/], *FileList["*.gem"], ignore_file)

CLOBBER.push(*%w[sorbet/rbi/annotations/ sorbet/rbi/gems/], tapioca)

multitask(:default) do
  sh(*%w[rake --tasks])
end

desc("Preview docs; use `PORT=<PORT>` to change the port")
multitask(:"docs:preview") do
  sh(*%w[yard server --reload --quiet --bind [::] --port], ENV.fetch("PORT", "8808"))
end

desc("Run test suites; use `TEST=path/to/test.rb` to run a specific test file, `TESTOPTS=-v` for verbose")
multitask(:test) do
  files =
    if ENV.key?("TEST")
      FileList[ENV.fetch("TEST")]
    else
      FileList["./test/**/*_test.rb"].exclude("./test/privy/integration/**/*_test.rb")
    end

  rb = files.map { "require_relative(#{_1.dump});" }.join

  testopts = ENV["TESTOPTS"].to_s.shellsplit
  ruby(*%w[-w -e], rb, "--", *testopts, verbose: false) { fail unless _1 }
end

namespace :test do
  desc("Run integration test suite against live backend")
  multitask(:integration) do
    files =
      if ENV.key?("TEST")
        FileList[ENV.fetch("TEST")]
      else
        FileList["./test/privy/integration/**/*_test.rb"]
      end

    rb = files.map { "require_relative(#{_1.dump});" }.join

    testopts = ENV["TESTOPTS"].to_s.shellsplit
    ruby(*%w[-w -e], rb, "--", *testopts, verbose: false) { fail unless _1 }
  end
end

# Cap parallelism at the CPU count. `--max-procs=0` spawns one process per
# 300-file batch with no upper bound; on large SDKs (thousands of files) that
# oversubscribes CPUs and stacks up rubocop processes, exhausting memory and
# slowing CI to the point of timing out.
xargs = %W[xargs --no-run-if-empty --null --max-procs=#{Etc.nprocessors} --max-args=300 --]
ruby_opt = {"RUBYOPT" => [ENV["RUBYOPT"], "--encoding=UTF-8"].compact.join(" ")}

filtered = ->(ext, dirs) do
  if ENV.key?(FILES_ENV)
    %w[sed -E -n -e] << "/\\.#{ext}$/p" << "--" << ENV.fetch(FILES_ENV)
  else
    (%w[find] + dirs + %w[-type f -and -name]) << "*.#{ext}" << "-print0"
  end
end

desc("Lint `*.rb(i)`")
multitask(:"lint:rubocop") do
  find = %w[find ./lib ./test ./rbi ./examples -type f -and ( -name *.rb -or -name *.rbi ) -print0]

  rubocop = %w[rubocop]
  rubocop += %w[--format github] if ENV.key?("CI")

  # some lines cannot be shortened
  rubocop += %w[--except Lint/RedundantCopDisableDirective,Layout/LineLength]

  lint = xargs + rubocop
  sh("#{find.shelljoin} | #{lint.shelljoin}")
end

norm_lines = %w[tr -- \n \0].shelljoin

desc("Format `*.rb`")
multitask(:"format:rb") do
  # while `syntax_tree` is much faster than `rubocop`, `rubocop` is the only formatter with full syntax support
  files = filtered["rb", %w[./lib ./test ./examples]]
  fmt = xargs + %w[rubocop --fail-level F --autocorrect --format simple --]
  sh("#{files.shelljoin} | #{norm_lines} | #{fmt.shelljoin}")
end

desc("Format `*.rbi`")
multitask(:"format:rbi") do
  files = filtered["rbi", %w[./rbi]]
  fmt = xargs + %w[stree write --]
  sh(ruby_opt, "#{files.shelljoin} | #{norm_lines} | #{fmt.shelljoin}")
end

desc("Format `*.rbs`")
multitask(:"format:rbs") do
  files = filtered["rbs", %w[./sig]]
  inplace = /darwin|bsd/ =~ RUBY_PLATFORM ? ["-i", ""] : %w[-i]
  uuid = SecureRandom.uuid

  # `syntax_tree` has trouble with `rbs`'s class & module aliases

  sed_bin = /darwin/ =~ RUBY_PLATFORM ? "/usr/bin/sed" : "sed"
  sed = xargs + [sed_bin, "-E", *inplace, "-e"]
  # annotate unprocessable aliases with a unique comment
  pre = sed + ["s/(class|module) ([^ ]+) = (.+$)/# \\1 #{uuid}\\n\\2: \\3/", "--"]
  fmt = xargs + %w[stree write --plugin=rbs --]
  # remove the unique comment and unprocessable aliases to type aliases
  subst = <<~SED
    s/# (class|module) #{uuid}/\\1/
    t l1
    b

    : l1
    N
    s/\\n *([^:]+): (.+)$/ \\1 = \\2/
  SED
  # for each line:
  #   1. try transform the unique comment into `class | module`, if successful, branch to label `l1`.
  #   2. at label `l1`, join previously annotated line with `class | module` information.
  pst = sed + [subst, "--"]

  success = false

  # transform class aliases to type aliases, which syntax tree has no trouble with
  sh("#{files.shelljoin} | #{norm_lines} | #{pre.shelljoin}")
  # run syntax tree to format `*.rbs` files
  sh(ruby_opt, "#{files.shelljoin} | #{norm_lines} | #{fmt.shelljoin}") do
    success = _1
  end
  # transform type aliases back to class aliases
  sh("#{files.shelljoin} | #{norm_lines} | #{pst.shelljoin}")

  # always run post-processing to remove comment marker
  fail unless success
end

desc("Format everything")
multitask(format: [:"format:rb", :"format:rbi", :"format:rbs"])

desc("Typecheck `*.rbs`")
multitask(:"typecheck:steep") do
  # `steep` validates the types each signature file declares against their definitions merged from every file. As every
  # generated file reopens the same namespaces, validating the files one by one validates those namespaces once per
  # file. Validating one file combining every signature validates each type once.
  sigs = FileList["sig/**/*.rbs"].sort

  # combining the files would change the scope of `use` directives, and could move syntax errors into the files after
  # them; `steep` stops at syntax errors before validating anything, so it checks those quickly as is
  combinable = sigs.all? do
    _, directives, = RBS::Parser.parse_signature(File.read(_1))
    directives.empty?
  rescue RBS::ParsingError
    false
  end
  next sh(*%w[steep check]) unless combinable

  Tempfile.create(%w[steep-signatures- .rbs], ".") do |combined|
    lineno = 1
    # the line each signature file starts at in the combined file
    starts = sigs.map do |path|
      rbs = File.read(path)
      rbs << "\n" unless rbs.end_with?("\n")
      combined.write(rbs)
      [lineno, path].tap { lineno += rbs.count("\n") }
    end
    combined.flush

    name = File.basename(combined.path)
    # the signature file and its line for a line in the combined file
    at = ->(line) do
      start, path = starts.fetch((starts.bsearch_index { _1.first > line } || starts.size).pred)
      [path, line - start + 1]
    end
    # report the diagnostics at their signature files, as the combined file is gone once `steep` exits
    location = /(?:\S*\/)?#{Regexp.escape(name)}:(\d+):(\d+)(?:\.\.\.(\d+):(\d+))?/
    IO.popen({"STEEP_SIGNATURE_PATH" => name}, %w[steep check], err: %i[child out]) do |io|
      io.each_line do |output|
        puts(
          output.gsub(location) do
            line, column, end_line, end_column = Regexp.last_match.captures
            path, line = at.(line.to_i)
            next "#{path}:#{line}:#{column}" unless end_line

            end_path, end_line = at.(end_line.to_i)
            "#{path}:#{line}:#{column}...#{end_path == path ? "" : "#{end_path}:"}#{end_line}:#{end_column}"
          end
        )
      end
    end
    $stdout.flush
    fail("Command failed with status (#{$?.exitstatus}): [steep check]") unless $?.success?
  end
end

directory(examples)

desc("Typecheck `*.rbi`")
multitask("typecheck:sorbet": examples) do
  sh(*%w[srb typecheck --dir], examples)
end

directory(tapioca) do
  sh(*%w[tapioca init])
end

desc("Typecheck everything")
multitask(typecheck: [:"typecheck:steep", :"typecheck:sorbet"])

desc("Lint and typecheck")
multitask(lint: [:"lint:rubocop", :typecheck])

desc("Build yard docs")
multitask(:"build:docs") do
  sh(*%w[yard])
end

desc("Build ruby gem")
multitask(:"build:gem") do
  # optimizing for grepping through the gem bundle: many tools honour `.ignore` files, including VSCode
  #
  # both `rbi` and `sig` directories are navigable by their respective tool chains and therefore can be ignored by tools such as `rg`
  Pathname(ignore_file).write(<<~GLOB)
    rbi/*
    sig/*
  GLOB

  sh(*%w[gem build -- privy.gemspec])
  rm_rf(ignore_file)
end

desc("Release ruby gem")
multitask(release: [:"build:gem"]) do
  sh(*%w[gem push], *FileList["*.gem"])
end
