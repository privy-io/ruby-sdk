# frozen_string_literal: true

require "open3"
require "tmpdir"

require_relative "test_helper"

class Privy::Test::RakefileTest < Minitest::Test
  ROOT = File.expand_path("../..", __dir__)

  def test_steep_reports_diagnostics_at_their_signature_files
    sigs = Dir.glob("sig/**/*.rbs", base: ROOT).sort
    first, second = sigs.take(2).map { File.read(File.join(ROOT, _1)).lines.size }

    Dir.mktmpdir do |dir|
      seen = File.join(dir, "seen")
      # stands in for `steep`, reporting a diagnostic from the 2nd line of the 2nd file to the 1st line of the 3rd one
      File.write(File.join(dir, "steep"), <<~RUBY)
        #!#{RbConfig.ruby}
        path = ENV.fetch("STEEP_SIGNATURE_PATH")
        File.write(#{seen.dump}, path)
        puts("\#{path}:#{first + 2}:3...#{first + second + 1}:0: [error] planted")
        exit(1)
      RUBY
      File.chmod(0o755, File.join(dir, "steep"))

      output, status = Open3.capture2e(
        {"PATH" => [dir, ENV.fetch("PATH")].join(File::PATH_SEPARATOR)},
        RbConfig.ruby,
        *%w[-S rake typecheck:steep],
        chdir: ROOT
      )

      refute(status.success?, output)
      assert_includes(output, "#{sigs.fetch(1)}:2:3...#{sigs.fetch(2)}:1:0: [error] planted")
      refute(File.exist?(File.join(ROOT, File.read(seen))))
    end
  end
end
