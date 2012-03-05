# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'compass' do
  watch(%r{^scss/(.*)\.s[ac]ss})
end

guard 'coffeescript', :output => 'public/javascripts/compiled' do
  watch(%r{^coffeescripts/(.*)\.coffee})
end
