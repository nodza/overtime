require 'rails_helper'

describe 'navigate' do
  describe 'admin dashboard' do
    it 'can be reached successfully' do
      visit admin_root_path
      expect(page.status_code).to eq(200)
    end

    it 'does not allow users access without signing in' do
      visit admin_root_path
      expect(current_path).to eq(new_user_session_path)
    end
  end
end