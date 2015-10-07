require 'test_helper'

class PublicationsControllerTest < ActionController::TestCase
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post :create, publication: { abstract: @publication.abstract, author: @publication.author, date_of_publication: @publication.date_of_publication, level: @publication.level, link: @publication.link, location: @publication.location, organizer_name: @publication.organizer_name, paper_id: @publication.paper_id, paper_title: @publication.paper_title, publication_name: @publication.publication_name, sponsers_name: @publication.sponsers_name }
    end

    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should show publication" do
    get :show, id: @publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publication
    assert_response :success
  end

  test "should update publication" do
    put :update, id: @publication, publication: { abstract: @publication.abstract, author: @publication.author, date_of_publication: @publication.date_of_publication, level: @publication.level, link: @publication.link, location: @publication.location, organizer_name: @publication.organizer_name, paper_id: @publication.paper_id, paper_title: @publication.paper_title, publication_name: @publication.publication_name, sponsers_name: @publication.sponsers_name }
    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete :destroy, id: @publication
    end

    assert_redirected_to publications_path
  end
end
