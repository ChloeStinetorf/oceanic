module ApplicationHelper
  def login_nav
    nav = ""

    if @auth.present? && @auth.is_admin?
      nav += "<li>#{link_to('Planes', '#', :class => 'button radius alert')}<li>"
      nav += "<li>#{link_to('Flights', '#', :class => 'button radius alert')}<li>"
    end
    if @auth.present? && !@auth.is_admin?
       nav += "<li>#{link_to('Search', '#', :class => 'button radius alert')}<li>"
     end
    if @auth.present?
      nav += "<li>#{link_to(@auth.email, '/login', :method => :delete, :remote => true, :class => 'button radius alert')}<li>"
    else
      nav += "<li>#{link_to('Register', new_user_path, :remote => true, :class => 'button radius alert')}</li>"
      nav += "<li>#{link_to('Login', login_path, :remote => true, :class => 'button radius alert')}</li>"
    end
  end
end


