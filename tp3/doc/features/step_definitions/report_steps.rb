Given('un fichier AsciiDoc nommé {string}') do |filename|
  @filename = filename
end

Then('le fichier doit exister') do
  expect(File.exist?(@filename)).to be true
end

Then('la section {string} doit exister dans le fichier') do |section_title|
  content = File.read(@filename)
  expect(content).to include(section_title)
end

Then('le fichier doit contenir le texte {string}') do |expected_text|
  content = File.read(@filename)
  expect(content).to include(expected_text)
end
