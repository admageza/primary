require 'test_helper'

class MaternairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maternaire = maternaires(:one)
  end

  test "should get index" do
    get maternaires_url
    assert_response :success
  end

  test "should get new" do
    get new_maternaire_url
    assert_response :success
  end

  test "should create maternaire" do
    assert_difference('Maternaire.count') do
      post maternaires_url, params: { maternaire: { body: @maternaire.body, image: @maternaire.image, title: @maternaire.title } }
    end

    assert_redirected_to maternaire_url(Maternaire.last)
  end

  test "should show maternaire" do
    get maternaire_url(@maternaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_maternaire_url(@maternaire)
    assert_response :success
  end

  test "should update maternaire" do
    patch maternaire_url(@maternaire), params: { maternaire: { body: @maternaire.body, image: @maternaire.image, title: @maternaire.title } }
    assert_redirected_to maternaire_url(@maternaire)
  end

  test "should destroy maternaire" do
    assert_difference('Maternaire.count', -1) do
      delete maternaire_url(@maternaire)
    end

    assert_redirected_to maternaires_url
  end
end
