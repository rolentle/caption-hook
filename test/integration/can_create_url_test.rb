class CanCreateUrlTest < ActionDispatch::IntegrationTest

  test 'user can create urls' do
    visit new_hook_path
    fill_in "Url", with: "example.com/hooks"
    within ".parameters" do
      check('app')
      check('user')
      check('post url')
      check('head')
      check('head long')
      check('git log')
    end
    click_on "Submit"
    assert page.has_content? "example.com/hooks"

  end
end
