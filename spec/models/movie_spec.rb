require 'rails_helper'

# fixtures and factories examples
#describe Movie do
#  #fixtures :movies
#  it 'should include rating and year in full name' do
#
#    # using fixtures
#    #movie = movies(:milk_movie)
#    #movie.name_with_rating.should == 'Milk (R)'
#
#    # using factories
#    # 'build' creates but doesn't save object; 'create' also saves it
#    movie = FactoryGirl.build(:movie, :title => 'Milk', :rating => 'R')
#    movie.name_with_rating.should == 'Milk (R)'
#
#  end
#end 
#
## more concise: uses Alternative RSpec2 'subject' syntax, and mixes in
## FactoryGirl methods in spec_helper.rb (see FatoryGirl README)
##describe Movie do
##  subject { build :movie, :title => 'Milk', rating => 'R' }
##  its(:name_with_rating) { should == 'Milk (R)' }
##end

describe Movie do
  describe 'searching Tmdb by keyword' do
    context 'with valid API key' do
      it 'should call Tmdb with title keywords' do
        Tmdb::Movie.should_receive(:find).with('Inception')
        Movie.find_in_tmdb('Inception')
      end
    end
    context 'with invalid API key' do
      before :each do
        Tmdb::Movie.stub(:find).and_raise(NoMethodError)
        Tmdb::Api.stub(:response).and_return({'code' => 401})
      end
      it 'should raise an InvalidKeyError' do
        lambda {Movie.find_in_tmdb('Inception')}.should raise_error(Movie::InvalidKeyError)
      end
    end
  end
end

