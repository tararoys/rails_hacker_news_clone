require 'spec_helper'

describe User do
  after do
    User.delete_all
  end

  it "should have an email" do
    tara = User.new(email:"tara@tara.com")
    expect(tara.email).to eq("tara@tara.com") 
  end

  it "should have a password" do
    tara = User.new(email: "tara@tara.com", password: "password")
    expect(tara.password).to eq("password")
  end 



end
