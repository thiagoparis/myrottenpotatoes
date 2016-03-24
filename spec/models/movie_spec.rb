require 'rails_helper'

describe Movie do
  #fixtures :movies
  it 'should include rating and year in full name' do

    # using fixtures
    #movie = movies(:milk_movie)
    #movie.name_with_rating.should == 'Milk (R)'

    # using factories
    # 'build' creates but doesn't save object; 'create' also saves it
    movie = FactoryGirl.build(:movie, :title => 'Milk', :rating => 'R')
    movie.name_with_rating.should == 'Milk (R)'

  end
end 

# more concise: uses Alternative RSpec2 'subject' syntax, and mixes in
# FactoryGirl methods in spec_helper.rb (see FatoryGirl README)
#describe Movie do
#  subject { build :movie, :title => 'Milk', rating => 'R' }
#  its(:name_with_rating) { should == 'Milk (R)' }
#end
