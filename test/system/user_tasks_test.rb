# frozen_string_literal: true

require 'application_system_test_case'

class UserTasksTest < ApplicationSystemTestCase
  setup do
    @user_task = user_tasks(:one)
  end

  test 'visiting the index' do
    visit user_tasks_url
    assert_selector 'h1', text: 'User Tasks'
  end

  test 'creating a User task' do
    visit user_tasks_url
    click_on 'New User Task'

    click_on 'Create User task'

    assert_text 'User task was successfully created'
    click_on 'Back'
  end

  test 'updating a User task' do
    visit user_tasks_url
    click_on 'Edit', match: :first

    click_on 'Update User task'

    assert_text 'User task was successfully updated'
    click_on 'Back'
  end

  test 'destroying a User task' do
    visit user_tasks_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'User task was successfully destroyed'
  end
end
