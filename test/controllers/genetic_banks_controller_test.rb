require 'test_helper'

class GeneticBanksControllerTest < ActionController::TestCase
  setup do
    @genetic_bank = genetic_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genetic_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genetic_bank" do
    assert_difference('GeneticBank.count') do
      post :create, genetic_bank: { analysedYear: @genetic_bank.analysedYear, breeder: @genetic_bank.breeder, codeBreeder: @genetic_bank.codeBreeder, color: @genetic_bank.color, father: @genetic_bank.father, flowerAbnormality: @genetic_bank.flowerAbnormality, hawthorn: @genetic_bank.hawthorn, headSize: @genetic_bank.headSize, mother: @genetic_bank.mother, numPlants: @genetic_bank.numPlants, opening: @genetic_bank.opening, petals: @genetic_bank.petals, picture: @genetic_bank.picture, production: @genetic_bank.production, scent: @genetic_bank.scent, sheets: @genetic_bank.sheets, status: @genetic_bank.status, steamLength: @genetic_bank.steamLength, variety: @genetic_bank.variety }
    end

    assert_redirected_to genetic_bank_path(assigns(:genetic_bank))
  end

  test "should show genetic_bank" do
    get :show, id: @genetic_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genetic_bank
    assert_response :success
  end

  test "should update genetic_bank" do
    patch :update, id: @genetic_bank, genetic_bank: { analysedYear: @genetic_bank.analysedYear, breeder: @genetic_bank.breeder, codeBreeder: @genetic_bank.codeBreeder, color: @genetic_bank.color, father: @genetic_bank.father, flowerAbnormality: @genetic_bank.flowerAbnormality, hawthorn: @genetic_bank.hawthorn, headSize: @genetic_bank.headSize, mother: @genetic_bank.mother, numPlants: @genetic_bank.numPlants, opening: @genetic_bank.opening, petals: @genetic_bank.petals, picture: @genetic_bank.picture, production: @genetic_bank.production, scent: @genetic_bank.scent, sheets: @genetic_bank.sheets, status: @genetic_bank.status, steamLength: @genetic_bank.steamLength, variety: @genetic_bank.variety }
    assert_redirected_to genetic_bank_path(assigns(:genetic_bank))
  end

  test "should destroy genetic_bank" do
    assert_difference('GeneticBank.count', -1) do
      delete :destroy, id: @genetic_bank
    end

    assert_redirected_to genetic_banks_path
  end
end
