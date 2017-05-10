require 'rails_helper'

describe 'pages/index' do
  before :each do
    2.times { create(:page, title: 'Foo') }
    assign :pages, Page.all.page(1)
  end

  it 'renders a list of pages' do
    render
    assert_select 'tr > td', :text => 'Foo', :count => 2
  end
end
