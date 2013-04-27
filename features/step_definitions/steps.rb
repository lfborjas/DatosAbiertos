Given(/^the following feeds exist:$/) do |table|                                                                                                                                                                
  # table is a Cucumber::Ast::Table
  @feeds = []
  table.hashes.each do |feed_hash|
     @feeds << FactoryGirl.create(:feed, feed_hash)
  end                                                                                                                              
end                                                                                                                                                                                                     

When(/^I visit the feeds list$/) do
  visit feeds_path
end 

Then(/^I should see the names for all the existing feeds$/) do                                                                                                                                                  
  @feeds.each do |existing_feed|
    #we could select a css class or html container for the feeds to make it more
    #robust, cf the capybara DSL: https://github.com/jnicklas/capybara, but 
    #the simplest version can be:
    page.should have_content(existing_feed.name.titleize)
  end
end
