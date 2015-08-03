require('rspec')
require('title_case')

describe('String#title_case') do
  it ('capitalizes the first letter of a single word') do
    expect(('apple').title_case()).to(eq('Apple'))
  end

  it('capitalizes the first letter of multiple words') do
    expect(('this is an apple').title_case()).to(eq('This Is An Apple'))
  end

  it("capitalizes words except and") do
    expect(("this is an apple and banana").title_case()).to(eq("This Is An Apple and Banana"))
  end
end
