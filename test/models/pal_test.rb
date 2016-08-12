require 'test_helper'

class PalTest < ActiveSupport::TestCase
  
  def setup
  @pal = Pal.new(palname: "john", email: "jko@example.com")
  end
test "pal should be valid" do
  assert @pal.valid?
end

test "palname should be present" do
  @pal.palname = " "
  assert_not @pal.valid?

  end
  
  test "palname should not be too long" do
  @pal.palname = "a"*41
  assert_not @pal.valid?
  end
  
  test "palname should not be too short" do
  @pal.palname = "aa"
  assert_not @pal.valid?
  end
  
  test "email should be present" do
    @pal.email=" "
    assert_not @pal.valid?
    
  end
  
  
  test "email should be within bounds" do
    @pal.email = "a"*101+"@example.com"
    assert_not @pal.valid?
    
  end
  
  
test "email address should be unique" do
  dup_pal = @pal.dup
  dup_pal.email = @pal.email.upcase
  @pal.save
  assert_not dup_pal.valid?
  
end


test "email validation should accept valid addresses" do
  valid_addresses =%w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eem.au laura+joe@monk.cm]
valid_addresses.each do |va|
  @pal.email = va
  assert @pal.valid?, '#{va.inspect} should be valid'
   
 end

end 

test "email validation should rejec invalid address" do
  
  invalid_address = %w[user@example,com user_at_eee.org user.name@example. eee@i_am_.com foo@ee+aar.com]
invalid_address.each do |ia|
  @pal.email = ia
  assert_not @pal.valid?, '#{ia.inspect} should be invalid'
  
  end
end
end
