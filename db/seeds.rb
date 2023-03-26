[
  { name: 'Ruby', release_date: '1995' },
  { name: 'Python', release_date: '1991' }
].each do |programming_language|
  ProgrammingLanguage.create! name: programming_language[:name],
                              release_date: programming_language[:release_date]
end
