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

  it("capitalizes words except combining conjunctions") do
    expect(("this is an apple and banana or banana and apple").title_case()).to(eq("This Is An Apple and Banana or Banana and Apple"))
  end

  it("capitalizes words even combining conjunctions if it is the first word") do
    expect(("so this is an apple and banana or banana and apple").title_case()).to(eq("So This Is An Apple and Banana or Banana and Apple"))
  end
end
