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

  it "should not store a password in plaintext in the database" do 

    tara = User.create(email:"tara@tara.com", password:"password")
    expect(tara.reload.encrypted_password).to_not eq("password")
    #expect(tara.reload.password_hash).to eq("some_different_hash_every_time")
    #this test above shows that even though I feed the same password in, I'll get a different hash out. This probably has to do with salting magic. 
    expect(tara.password).to eq("password") #password works due to bcrypt comparison magic. Yay bcrypt comparison magic!

  end



end
