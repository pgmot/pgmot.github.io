module Colors
  def colorize(text, color_code)
    "\033[#{color_code}m#{text}\033[0m"
  end

  {
    :black    => 30,
    :red      => 31,
    :green    => 32,
    :yellow   => 33,
    :blue     => 34,
    :magenta  => 35,
    :cyan     => 36,
    :white    => 37
  }.each do |key, color_code|
    define_method key do |text|
      colorize(text, color_code)
    end
  end
end

include Colors

desc "build middleman"
task :build do
  puts "start build"
  status = system("middleman build --clean")
  puts status ? green("OK") : red("FAILED")
end

# desc "Deploy website via git"
# task :deploy => [:build] do
#   puts "## Deploying website via git to github pages"
#   status = system("middleman deploy")
#   puts status ? green("OK") : red("FAILED")
# end
