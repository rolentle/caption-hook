class CanCreateUrlTest < ActionDispatch::IntegrationTest

  test 'user can create urls' do
    visit new_hook_path
    fill_in "Url", with: "example.com/hooks"
    within ".parameters" do
      check('App')
      check('User')
      check('Post_url')
      check('Head')
      check('Head_long')
      check('Git_log')
    end
    click_on "submit"
    assert page.has_content? "example.com/hooks"

  end
end
