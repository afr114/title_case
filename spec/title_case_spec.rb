require('rspec')
require('title_case')

describe('String#title_case') do
  it ('capitalizes the first letter of a single word') do
    expect(('apple').title_case()).to(eq('Apple'))
  end
end
