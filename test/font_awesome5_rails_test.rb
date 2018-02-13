require 'test_helper'
class FontAwesome5RailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, FontAwesome5::Rails::Engine.superclass
    puts "Engine is Loaded"
  end

  test "fonts are served" do
    get "/assets/fa-brands-400.eot"
    assert_response :success
    get "/assets/fa-brands-400.ttf"
    assert_response :success
    get "/assets/fa-brands-400.woff2"
    assert_response :success
    get "/assets/fa-regular-400.svg"
    assert_response :success
    get "/assets/fa-regular-400.woff"
    assert_response :success
    get "/assets/fa-solid-900.eot"
    assert_response :success
    get "/assets/fa-solid-900.ttf"
    assert_response :success
    get "/assets/fa-solid-900.woff2"
    assert_response :success
    get "/assets/fa-brands-400.svg"
    assert_response :success
    get "/assets/fa-brands-400.woff"
    assert_response :success
    get "/assets/fa-regular-400.eot"
    assert_response :success
    get "/assets/fa-regular-400.ttf"
    assert_response :success
    get "/assets/fa-regular-400.woff2"
    assert_response :success
    get "/assets/fa-solid-900.svg"
    assert_response :success
    get "/assets/fa-solid-900.woff"
    assert_response :success
    puts "Fonts are served"

  end


  test "stylesheets are served" do
    get "/assets/font-awesome5.css"
    # binding.pry
    assert_font_awesome(response)
  end

  # test "stylesheets contain asset pipeline references to fonts" do
  #   get "/assets/font-awesome.css"
  #   assert_match %r{/assets/fontawesome5-webfont(-\w+)?\.eot},  response.body
  #   assert_match %r{/assets/fontawesome5-webfont(-\w+)?\.eot\?#iefix}, response.body
  #   assert_match %r{/assets/fontawesome5-webfont(-\w+)?\.woff2}, response.body
  #   assert_match %r{/assets/fontawesome5-webfont(-\w+)?\.woff}, response.body
  #   assert_match %r{/assets/fontawesome5-webfont(-\w+)?\.ttf},  response.body
  #   assert_match %r{/assets/fontawesome5-webfont(-\w+)?\.svg#fontawesomeregular}, response.body
  # end

  # test "stylesheet is available in a css sprockets require" do
  #   get "/assets/sprockets-require.css"
  #   assert_font_awesome(response)
  # end

  # test "stylesheet is available in a sass import" do
  #   get "/assets/sass-import.css"
  #   assert_font_awesome(response)
  # end

  # test "stylesheet is available in a scss import" do
  #   get "/assets/scss-import.css"
  #   assert_font_awesome(response)
  # end

  test "helpers should be available in the view" do
    get "/icons"
    assert_response :success
    assert_select "i.fa.fa-flag"
    assert_select "span.fa-stack"
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

  def assert_font_awesome(response)
    assert_response :success
    assert_match(/font-family:\s*'Font Awesome';/, response.body)
  end
end
