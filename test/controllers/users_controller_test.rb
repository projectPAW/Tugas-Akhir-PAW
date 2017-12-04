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

  test "should get new" do #tambah/new akun
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

  test "should create user" do #daftar/create akun
    assert_difference('User.count') do
      post daftar_url, params: { user: { noinduk: '1234', nama: 'contohnama', jenkel: 'laki-laki', kelas: '3-A', jurusan: 'IPA', sekolah: 'SMK', username: 'bebas', password:'sadojw2e93e9wzZA3' } }
    end
    assert_redirected_to daftar_path #user_url(User.last)
  end
  #------------------------------------------------------------------------------------------------------------  
  test "should get edit" do #edit akun
    get user_url(@user)
    assert_response :success
  end

  test "should update user " do #update akun
      post user_url(@user), params: { user: { noinduk: '1234', nama: 'contohnama', jenkel: 'laki-laki', kelas: '3-A', jurusan: 'IPA', sekolah: 'SMK', username: 'bebas', password:'sadojw2e93e9wzZA3' } }
      assert_redirected_to setting_path #user_url(@user)
  end
  #------------------------------------------------------------------------------------------------------------
  test "should destroy user" do #delete akun
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end
    assert_redirected_to home_path
  end
  #------------------------------------------------------------------------------------------------------------
end
