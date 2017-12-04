require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get home_url
    assert_response :success
  end

  test "should get new" do
    get daftar_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post daftar_url, params: { user: {noinduk: '11111', nama: 'jonny', jenkel: 'Pria', kelas: '3-B', jurusan: 'IPS', sekolah: 'SMAN 2', username: 'jojo', password: '1111'  } }
    end

    assert_redirected_to daftar_path
  end
end
