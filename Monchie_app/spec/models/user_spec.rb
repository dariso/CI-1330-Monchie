require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'ese username ya existe' do
  user=User.new
  user.should_not be_valid
  end
  it 'ese email ya existe' do
  user1=User.new
  user1.should_not be_valid
  end
  it 'password de confirmacion desigual' do
  user2=User.new
  user2.should_not be_valid
  end
end
