require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end 

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'spaccccccce' }
    let(:page_title) { 'Home' }

    it_should_behave_like "all static pages"
  end

  describe "about page" do
    before { visit about_path }
    let(:heading)    { 'About Chelsey and Jackson' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "faq page" do
    before { visit faq_path }
    let(:heading)    { 'Frequently Asked Questions' }
    let(:page_title) { 'FAQ' }

    it_should_behave_like "all static pages"
  end

  describe "blog page" do
    before { visit blog_path }
    let(:heading)    { 'Blog' }
    let(:page_title) { 'Blog' }

    it_should_behave_like "all static pages"
  end
end
