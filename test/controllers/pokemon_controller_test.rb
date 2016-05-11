require 'test_helper'

class PokemonControllerTest < ActionController::TestCase
  test "should get belongs_to" do
    get :belongs_to
    assert_response :success
  end

  test "should get :trainer" do
    get ::trainer
    assert_response :success
  end

  test "should get in" do
    get :in
    assert_response :success
  end

  test "should get pokemon" do
    get :pokemon
    assert_response :success
  end

  test "should get has_many" do
    get :has_many
    assert_response :success
  end

  test "should get :pokemons" do
    get ::pokemons
    assert_response :success
  end

end
