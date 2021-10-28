Given(/^I visit site$/) do
  @calculator_page = CalculatorPage.new
  @calculator_page.load
end

And(/^I verify the site is opened$/) do
  expect(@calculator_page).to have_content("Cycling Critical Power")
end

Then(/^I can see the CP calculator$/) do
  expect(@calculator_page).to have_css("#divCP")
end

And(/^I enter the body weight in pounds$/) do
  @calculator_page.weight.click.native.clear
  @calculator_page.weight.set '142'
end

And(/^I enter I1$/) do
  @calculator_page.int1.click.native.clear
  @calculator_page.int1.set '400'
end

Then(/^I select I1 duration$/) do
  within(@calculator_page.select1) do
    find("option[value='3']").click
  end
end

And(/^I enter I2$/) do
  @calculator_page.int2.click.native.clear
  @calculator_page.int2.set '290'
end

And(/^I select I2 duration$/) do
  within(@calculator_page.select2) do
    find("option[value='12']").click
  end
end

Then(/^I click calculate button$/) do
  @calculator_page.clc_btn.click
end

Given(/^I see the results section$/) do
  expect(page).to have_content('CP in Watts')
end

Then(/^I see my absolute CP in watts$/) do
  @calculator_page.abs_cp.eql?('253')
end

And(/^I see my CP in W\/kg$/) do
  @calculator_page.abs_cp.eql?('3.92')
end

Then(/^I verify my threshold zone$/) do
  @calculator_page.t_low.eql?('231')
  @calculator_page.t_high.eql?('266')
end
