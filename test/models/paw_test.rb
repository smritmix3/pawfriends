require 'test_helper'
class PawTest < ActiveSupport::TestCase
  
  def setup
    @paw = Paw.new(name: "tommy", summary: "this is my ljjjjjjjjjjjjjjjjjjjjdog",description: "this is a 2 year old Doberman")
  end
  test "paw should be valid" do
    assert @paw.valid? 
  end
  test "name should be present" do
    @paw.name = " "
    assert_not @paw.valid?
  end  
  
  test "name length should not be too long" do
  @paw.name = "a"*101
  assert_not @paw.valid?
  end

  test "name length should not be too short" do
  @paw.name ="aaaa"
  assert_not @paw.valid?
  end
  
  test "summary should be present" do
  @paw.summary = " "
  assert_not @paw.valid?
  end
  
  test "summary length should not be too long" do
  @paw.summary = "a"*151
  assert_not @paw.valid?
  end
  
  test "summary length should not be too short" do
  @paw.summary = "a"*9
  assert_not @paw.valid?
  end
  
  test "description must be present" do
  @paw.description=" "
  assert_not @paw.valid?
  end 
  
  test "description should not be too long" do
  @paw.description = "a"*501
  assert_not @paw.valid? 
  end
  
  test "description should not be too short" do
@paw.description = "a"*19
assert_not @paw.valid?
 end  

end